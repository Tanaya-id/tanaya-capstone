import numpy as np
import matplotlib.pyplot as plt
import visualkeras
import tensorflow as tf
from tensorflow.keras import Model
from tensorflow.keras import layers
from tensorflow.keras.applications.mobilenet_v2 import MobileNetV2
from keras_preprocessing.image import load_img, img_to_array
from keras_preprocessing.image import ImageDataGenerator

pre_trained_model = MobileNetV2(include_top=False,
                                weights="imagenet",
                                input_shape=(224, 224, 3),
                                classes=3,
                                classifier_activation="softmax",
                                )

pre_trained_model.save('mobilenet_v2.h5')

for layer in pre_trained_model.layers:
    layer.trainable = False

pre_trained_model.summary()

last_layer = pre_trained_model.get_layer('out_relu')
print('last layer output shape: ', last_layer.output_shape)
last_output = last_layer.output

x = layers.Flatten()(last_output)
x = layers.Dense(512, activation='relu')(x)
x = layers.Dropout(0.5)(x)
x = layers.Dense(3, activation='softmax')(x)
model = Model(pre_trained_model.input, x)

model.summary()
visualkeras.layered_view(model, legend=True)

model.compile(loss='categorical_crossentropy', optimizer=tf.keras.optimizers.experimental.SGD(
    learning_rate=0.0001,
    momentum=0.0,
    ema_momentum=0.99,
    jit_compile=True,
    name='SGD',
), metrics=['accuracy'])


TRAINING_DIR = "train/"
training_datagen = ImageDataGenerator(
    rescale=1./255,
    rotation_range=40,
    width_shift_range=0.2,
    height_shift_range=0.2,
    shear_range=0.2,
    zoom_range=0.2,
    horizontal_flip=True,
    fill_mode='nearest')

VALIDATION_DIR = "test/"
validation_datagen = ImageDataGenerator(rescale=1./255)

train_generator = training_datagen.flow_from_directory(
    TRAINING_DIR,
    target_size=(224, 224),
    class_mode='categorical',
    batch_size=10
)

validation_generator = validation_datagen.flow_from_directory(
    VALIDATION_DIR,
    target_size=(224, 224),
    class_mode='categorical',
    batch_size=10
)

history = model.fit(train_generator, epochs=50, steps_per_epoch=30,
                    validation_data=validation_generator, verbose=1, validation_steps=8)

acc = history.history['accuracy']
val_acc = history.history['val_accuracy']
loss = history.history['loss']
val_loss = history.history['val_loss']

epochs = range(len(acc))

plt.plot(epochs, acc, 'r', label='Training accuracy')
plt.plot(epochs, val_acc, 'b', label='Validation accuracy')
plt.title('Training and validation accuracy')
plt.legend(loc=0)
plt.figure()

plt.plot(epochs, loss, 'bo', label='Training loss')
plt.plot(epochs, val_loss, 'b', label='Validation loss')
plt.title('Training and validation loss')
plt.legend()

plt.show()

# Prediction
path = ".jpg"
img = load_img(
path,
grayscale=False,
color_mode='rgb',
target_size=(150, 150),
    #interpolation='nearest',
  #keep_aspect_ratio=True
)
x = img_to_array(img)
x = np.expand_dims(x, axis=0)

images = np.vstack([x])
classes = model.predict(images, batch_size=10)
print(validation_generator.class_indices)
print(classes)

# Save model
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()
with open('model.tflite', 'wb') as f:
  f.write(tflite_model)
