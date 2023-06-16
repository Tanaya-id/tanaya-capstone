// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoilTypeStruct extends FFFirebaseStruct {
  SoilTypeStruct({
    String? aluvial,
    int? sandy,
    String? chernozem,
    String? clay,
    String? yellow,
    String? laterite,
    String? grumusol,
    String? organosol,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _aluvial = aluvial,
        _sandy = sandy,
        _chernozem = chernozem,
        _clay = clay,
        _yellow = yellow,
        _laterite = laterite,
        _grumusol = grumusol,
        _organosol = organosol,
        super(firestoreUtilData);

  // "aluvial" field.
  String? _aluvial;
  String get aluvial => _aluvial ?? '';
  set aluvial(String? val) => _aluvial = val;
  bool hasAluvial() => _aluvial != null;

  // "sandy" field.
  int? _sandy;
  int get sandy => _sandy ?? 0;
  set sandy(int? val) => _sandy = val;
  void incrementSandy(int amount) => _sandy = sandy + amount;
  bool hasSandy() => _sandy != null;

  // "chernozem" field.
  String? _chernozem;
  String get chernozem => _chernozem ?? '';
  set chernozem(String? val) => _chernozem = val;
  bool hasChernozem() => _chernozem != null;

  // "clay" field.
  String? _clay;
  String get clay => _clay ?? '';
  set clay(String? val) => _clay = val;
  bool hasClay() => _clay != null;

  // "yellow" field.
  String? _yellow;
  String get yellow => _yellow ?? '';
  set yellow(String? val) => _yellow = val;
  bool hasYellow() => _yellow != null;

  // "laterite" field.
  String? _laterite;
  String get laterite => _laterite ?? '';
  set laterite(String? val) => _laterite = val;
  bool hasLaterite() => _laterite != null;

  // "grumusol" field.
  String? _grumusol;
  String get grumusol => _grumusol ?? '';
  set grumusol(String? val) => _grumusol = val;
  bool hasGrumusol() => _grumusol != null;

  // "organosol" field.
  String? _organosol;
  String get organosol => _organosol ?? '';
  set organosol(String? val) => _organosol = val;
  bool hasOrganosol() => _organosol != null;

  static SoilTypeStruct fromMap(Map<String, dynamic> data) => SoilTypeStruct(
        aluvial: data['aluvial'] as String?,
        sandy: data['sandy'] as int?,
        chernozem: data['chernozem'] as String?,
        clay: data['clay'] as String?,
        yellow: data['yellow'] as String?,
        laterite: data['laterite'] as String?,
        grumusol: data['grumusol'] as String?,
        organosol: data['organosol'] as String?,
      );

  static SoilTypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SoilTypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'aluvial': _aluvial,
        'sandy': _sandy,
        'chernozem': _chernozem,
        'clay': _clay,
        'yellow': _yellow,
        'laterite': _laterite,
        'grumusol': _grumusol,
        'organosol': _organosol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'aluvial': serializeParam(
          _aluvial,
          ParamType.String,
        ),
        'sandy': serializeParam(
          _sandy,
          ParamType.int,
        ),
        'chernozem': serializeParam(
          _chernozem,
          ParamType.String,
        ),
        'clay': serializeParam(
          _clay,
          ParamType.String,
        ),
        'yellow': serializeParam(
          _yellow,
          ParamType.String,
        ),
        'laterite': serializeParam(
          _laterite,
          ParamType.String,
        ),
        'grumusol': serializeParam(
          _grumusol,
          ParamType.String,
        ),
        'organosol': serializeParam(
          _organosol,
          ParamType.String,
        ),
      }.withoutNulls;

  static SoilTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      SoilTypeStruct(
        aluvial: deserializeParam(
          data['aluvial'],
          ParamType.String,
          false,
        ),
        sandy: deserializeParam(
          data['sandy'],
          ParamType.int,
          false,
        ),
        chernozem: deserializeParam(
          data['chernozem'],
          ParamType.String,
          false,
        ),
        clay: deserializeParam(
          data['clay'],
          ParamType.String,
          false,
        ),
        yellow: deserializeParam(
          data['yellow'],
          ParamType.String,
          false,
        ),
        laterite: deserializeParam(
          data['laterite'],
          ParamType.String,
          false,
        ),
        grumusol: deserializeParam(
          data['grumusol'],
          ParamType.String,
          false,
        ),
        organosol: deserializeParam(
          data['organosol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SoilTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SoilTypeStruct &&
        aluvial == other.aluvial &&
        sandy == other.sandy &&
        chernozem == other.chernozem &&
        clay == other.clay &&
        yellow == other.yellow &&
        laterite == other.laterite &&
        grumusol == other.grumusol &&
        organosol == other.organosol;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [aluvial, sandy, chernozem, clay, yellow, laterite, grumusol, organosol]);
}

SoilTypeStruct createSoilTypeStruct({
  String? aluvial,
  int? sandy,
  String? chernozem,
  String? clay,
  String? yellow,
  String? laterite,
  String? grumusol,
  String? organosol,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SoilTypeStruct(
      aluvial: aluvial,
      sandy: sandy,
      chernozem: chernozem,
      clay: clay,
      yellow: yellow,
      laterite: laterite,
      grumusol: grumusol,
      organosol: organosol,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SoilTypeStruct? updateSoilTypeStruct(
  SoilTypeStruct? soilType, {
  bool clearUnsetFields = true,
}) =>
    soilType
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addSoilTypeStructData(
  Map<String, dynamic> firestoreData,
  SoilTypeStruct? soilType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (soilType == null) {
    return;
  }
  if (soilType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && soilType.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final soilTypeData = getSoilTypeFirestoreData(soilType, forFieldValue);
  final nestedData = soilTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = soilType.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSoilTypeFirestoreData(
  SoilTypeStruct? soilType, [
  bool forFieldValue = false,
]) {
  if (soilType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(soilType.toMap());

  // Add any Firestore field values
  soilType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSoilTypeListFirestoreData(
  List<SoilTypeStruct>? soilTypes,
) =>
    soilTypes?.map((e) => getSoilTypeFirestoreData(e, true)).toList() ?? [];
