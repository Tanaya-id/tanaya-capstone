import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aluvialsoil_model.dart';
export 'aluvialsoil_model.dart';

class AluvialsoilWidget extends StatefulWidget {
  const AluvialsoilWidget({Key? key}) : super(key: key);

  @override
  _AluvialsoilWidgetState createState() => _AluvialsoilWidgetState();
}

class _AluvialsoilWidgetState extends State<AluvialsoilWidget>
    with TickerProviderStateMixin {
  late AluvialsoilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -250.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 50.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: Offset(-20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AluvialsoilModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 311.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'data:image/jpeg;base64,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',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x17202529),
                            offset: Offset(0.0, 1.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 50.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: FlutterFlowTheme.of(context).dark600,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Aluvial Soil',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Urbanist',
                              color: FlutterFlowTheme.of(context).dark600,
                              fontWeight: FontWeight.w600,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 16.0),
                      child: Text(
                        'Alluvial soil is formed by the deposition of sediments carried by rivers, and it typically has a sandy, silty, or clayey texture. This soil is often fertile and suitable for agriculture due to its high mineral content and organic matter.',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).dark600,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Corps Recomendation',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .dark600,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x411D2429),
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 4.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Sugarcane',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .dark600,
                                                          fontSize: 18.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'corpdetail');
                                                  },
                                                  child: Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: Color(0xFF57636C),
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x411D2429),
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxQTExYUFBQWGBYZGiAcGhoZGhwhHBwaHB8cHR0aHBoaHysiHx8oHxoaIzQjKCwuMTExGiI3PDcwOyswMS4BCwsLDw4PHRERHTMpIikyMDA2MDYwMDAyNzAyMDAyMDAyMDAwMjAwMDAyMDAwMDAyMDAwMDAwMDAwMDAwMDAwMP/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAD0QAAEDAgQEBAQFAgUEAwEAAAECAxEAIQQFEjEGQVFhEyJxgTKRobEjQsHR8BRSB2Jy4fEVM4KSQ1OyJP/EABoBAAMBAQEBAAAAAAAAAAAAAAIDBAEFAAb/xAAxEQACAgEEAQIEBQQCAwAAAAABAgARAwQSITFBBSITUWFxFDKBkbGhweHw0fEjM0L/2gAMAwEAAhEDEQA/AAMA5oxCASAUL3A1fCbmIuKccXQ87rbdlUCTpABjrbbvSnBY9kKCGwvUtV7CTPKZ2HStCxlIJBJ9o/WoMGmSj5nPUuwoRY3hmQjU5qCo2SRpkc9pilLjiQZTaNib/wA960mfZcpKfHYOlaUwoclp5786zWIaUlSV+GUoXdMg9NqVqMQQcLNIYHmNcmxS2nPEQoJEEEEEhRP5bexop3ihJbKFNqCxNxtqJN+0kzSPB4nU4PyzzFvNEfWo47CiTpMnneZPOTXMyIHID/cD5Q+SODIuZi6kzMDlO5mhnitUKXJnYn+d69W0sgAknSPUAVJClFOgXvPefXenEjioBE8YcSm8A+u1EMLUtlYAKiY2HfoK9eypzwQ6DYzIg29+9eZMsjUAYMU7BtZWIPMoxVtIMHZwhSsBYKeZH5vlyrS5Nk3iOJH5QJg9ep77/IdaV5ZhStZVuQblU79u9bjLm2m0kAgFHxK5AnlqNvaodRqPhiwLPj/MPEADZivPsq8EDw/hA83Umd/9qTZbgULxOvT+GkBSwdpAMD1mLdjWkzHNGGAXh+K6PKnUuQFEb6AI2NCZWkjB6kgSrUs+t/2Apnp6F6ZjzyeBX8wNoL3E/FRkalpAXqIB56SAY9JrD4ySpQH8ivozuXjGteJJS4JEHaU2g+vXvWGwmAcLykFB1JJChEwe9dF/b7vEPaXall2Tp8ZUrWEgCFKUYHW5/m9GYrLm0IW4g+IQIkbSfzewvVeF4bfSs/hjSREkp9Rafai3MvxCFAhEJI0qCSCI/wBM3ipHyIWG1h+8Y+jy7b2m/sZm1g2nblVzSZv2ot5k6EpNlJkkGxHO4PpReGy1xxCSpWltCLLgGQJI1abzJi/btVC+4SQpR5idGHMSbH7VYlAH5v3NEFop0Ski07nzST5ogWgbduc28Jvyk7d6eF4gEjqVh2BzPaPvVS5JlQMdKM1e9VuIm4NBsFzN0sZfDqkpcWW20i0JkDqAOp6nfmaOYyvDkFRfRB2QFwo9NS1C3fSk9utKDve3616Wjy3pbYfkagmaZPwBKcay0gAeRsC3PfVrV3J3JpY74DL6VBYdbPxTBVPNQSREHvJ32pRp62rzwTyoV01XZ7+gEyo0zfOfFMNt6Ei0hVz3MHn7+tCYHMltExqAO4mAf52qjT1t3/m9OchyL+oUEnEMtT/cqVH0SLeyiKYuBANohopviPuHcaHEE6iVbAckzuTTrLOHhP8AUOKIaRKigzJ0iZPaeXaj+GeD8PhyVpUXVERqURESDZKbbgXMmtEq9jQYfTQuQuT9h/zKUx/OfIczx6luLciEKUSAUiADsNqqCGlNqWdIVIAQAoKPVUiwA+tbrj5xnw0pUpQVulCQIJ2BVbYVh0ASJ+VT5bxOVu5Pk3I/BuUNslCtbaoUOR6eu3zopWb64Q9KCLAj4fkNvaaBxinNSlJCACZ0QTA9TQ/9UuIUkehFesN+YA/zM+JfDR/hX1IUlUymbKBkfMUyzHJsS+suhIcCrgzED+2OUVj2XVJu0opJ3Sdj6f70zw3HmJZT4fhpt6j6U5MaFNpJ7uGB8uZXneWtsBpaXAHdKSW0z5QRIOrmo3JineU8SJKfxLEc6UMYxJw/huNNkz5XI84vt/zVDuFCoF46Dn6nnTUyOjDb8uYoPtPEGz/OvHdUUqVo/KCTHrFEt8RO/wBOcOq4tpPMAcq8RgUAEFHLlY9jVOXBpt0KdSVpG6RvPcHlXnDE7j5i1sGye5PB4UOrHmKUHmElRB6aR96dYfKU+J4KyA7M69Xl0dY5qO0HnSBeKPiqdaGmVTo5aelE4TFECUJ1efVJ+JPVCuqT1qXMlg7DHo46mvwmBwuGc8Ra1GJgbgn1i9KWfBdfW62VNXlASfMna8D3+dK8djPHUQfwkJuDc6iaV4fGEL8q/gPxCb0rHhyfCO48mOP5bqfU2mEFsDTNovz9az2ZZG21qWLTyG/okcxVeG4t8pQIU9ECLoHKT6bxzpanMwtXmWXCBuT06kem1Q6PR6hXLXQ/mFW6qj3LMkQGjiMQrQ0PhSPiUf1JP+3WgTxa4GgytAACx5UWOkGYVII2pdnPETrqUKjTIAQ2DZCO3+Y9elBLYWbKQT9b/vXWBC8CeOQBqr7wfPswbW+8pMBDigoapC0+UAiUDTBjpWw4YZ1YRsBWpKkqk781j6V8/wAwUlCzrVrV/aAI9FH9vpWnyLFuHCNsISUlRUSOy1EpA7GZ96eWVPdUp0WmOpy7V4+Z+QjjI1OtiPDcWD0SDHfcE27GnqGUuJJCbjcEQR6pp3wxl6W20ixIAE9+ZqziVlHhKVOlQFiN5/asTTbsW5z+nidFcmPHkGPGv0vyZkcYEtjUshI6mgP6lCpKFBQ7Gk/ED7rkJXy+velbTBTe4PUVy20qHrifT4dMNls3P9Jo8cwh1MLE9+Y9DWdzHBeEsEfDAAVuoqH93LY7c47wDcNj1Cyrjrz96KdWlQg7GvYXfC1diRa70tM6fXwZn8ZmQOmSCAkgAAeX2qhBUkSVCVfCCBKQdz6nYfOtZwxkWHZcbcfdaccWJQgj8NsX87k2KhBhA5x60BmmRtuPOuKxbcpBUkmSFkk2hI8p9ouK6/NWPM+KfCEba3BETNdtuXp/DXFJBsfnUk4ZSUi1uUkXivPME6iBHTnQLl55k5UgzkNybxt/N960HD3B6sS2tTbwCk7IKZk91AyB3j7VmMQ8pXty6VPC5i63/wBt1aD2P60QcHuaoF8w7NMCGVltTiFkEg6LgEGCCYFDr0AWPvpMUKDG4JPXfczevUJkgJEkmAkAzJ5Ac6WWPieAAPEs/pdV/ET7mPpRCOHsQQFBtRSbggGCPWKNwvCL5lTjbjaUiVC2uOyTcep26Gj8Lnb7DQZZeWlCZI+GbmTeKwkL+YygcfmEVtZZimhrRLfUhwCP/UzTrJc7zNKSpHiPJ/zNqWm3RUT9a7D8fYtqdeh0ctQgg9ZTE1uOF8/RimQtICFSQtEiUqG/qDvPen4AW/K39KmqVJqfP89zTFPKDj7BTA0iELSLX/ON6BRigoAQAoC9jJvMma23+IGGEB1TpnZLcfMg1iHL78vpUWoFOQR+sny0HqWI786mtoKgH6b+1eAfSicIwpaoSCYvbe3OpVvcKihwZVmWUobuh5Dg6SAsT1SaEN7qAnub1ts/4YQ+kLR5XEpH/lA596yjLjiBphNuqEk/Miar1GM4254jmQg8QZp9IQVAgxVn/UQhaVpVBCgflB6Vl3FFtRFwZv8A8VuOFMTh8S14Skt+IiVlLkaSQIlPM9SKpyMV6FxCiz3FnE+Zl50uBAQFAW/W0Ujc1n85Pr+9PwlpLbzailR+JLkGAeYFK8A2lZKXQoJPwuBJgHval42dp4A3zK2mVkFUyAY359quK1IHiA6SOfXsetW8N4jwi4hQC0gz77Ej2q/PHm3PCQi0qv6CgNhq+X8TVHNiVoxLa/KsRqFhMQr16GpcM5EXWsYUg6m0o0juVGfoKt/6e26NKSCr8pHL17UTkT68O8lnE6kNrI1ECNaROkkj4kg/rR4cl9CPQ2QYoxqgwnwkfGfjV+grzh5vzi1jXvE+WnDvrQZN9QO4UlV0qHrUsuHgpDylaRYwLqv22vVPQlScdxo/k7ilLWB5UJSSdoEWAnnS3E4xfhalKKEzARfUpQ5ntR+Lz5bg/CwzhHMmYMDcgCKByTCnEvanYKUCSOXZPp+1JCBaPmD8KzQ7M8yLh3X+M/ZEagjmr16A/rWt4daAJcVEjb1/2oXEhIkJMqmD6b/oKFD8ReL1PnJ3Gj0J9V6ZpFXAQp5bs/aahziBSDYwKrVjlPfESaz778mj8BjABFK0uR2NOeJY2kRF3KOZbmGFCqV4rDRamONxgilbuNB3rpOuMcRaM5i51uDXPvEJABonFEFMilrqqhyIq8CW43JkiUFQU4VBIBJ0wSbWFztMSekxV+HxeHaKFoSXVwZDsFokjkiJtuCVe1e4bBaxaLyKSYoFCyC2kECJki3WBzp2BzVftPmPW9OA/wARfPf3mvyjKkYnDLfDgQ4XPCbQlIGswkwABOrzb9r9QdlWSYR/DO+OFtKYVpKwoyd4BSqfNMiLcqznBXE7eGcHiNnSZBcQfOgGP+2n4RNpO568qE4t4o8Z1YZBCVWJWSpSpAEkq2MAC0QLVTtU8/0/vOCKAuKsxxiCspQQNNgQmNUWk73POm/CnDbuMJQFpQvSVALmFgWtbr8q84H4UXjHpIOmZWqPn70+/wAQ9DGIQ02A2lppOkzBJJUSZHPl7UDAAdcTQvFmMOFOBFBWnFNMqbWJjWpLqDH5QmLciD6+u3ynhnC4dWthlKFRGqVEwdxKiegr4UrOCCCidQvqkzPUHee9bXhr/EN/W0X1BSANC4FyP/sPVQ+o703HkRfzCvrMRwOxN06f/wCkg80fvXzviHKFYd5SSDoN0Ex5h7dP5vW2y3NmsS54qJ6Cd7HpS3jnK3HAHErWuDAbgQm1yI9O+9L1ahk3D/RKHG5LEwriBB6fbvVbZWy4HWlFKkmQofzaKZ4rLVt/Gg36UvIiU8jt2rm48nlTImhGYZ4++5Li9SSowm0JB5Jty/SopXJiKHbR5r8r1YvFFB8tr3PO9o9L0Z/8jcmLNsbMJPxbbitdk3htMpcgA6PMrnWeyxBJC16ihF/VXIXqzNcyLo8NKYH3jt60zBkx4iWPfgRiFVNmPXeIljSWUBYPeI7HvSvG4RTyytTWkncA29aVlxxkeUwo3Ij5USM/e/u+lVtrsOVRvUzWyr5i3FcTzqCcPhkpUbjwknY2EnlQOEzBsOlwstyeSRAB6pG0dqWujtf0ocuRY78opRBYEExBY+ZosLiU3WvSE6rg7eorV5LmqCzCUoQkWROx6mOgr5k2orgfUm1O+HsRhWVqW+FOkJIbQPg1GfjJPwjoKPCPhkmNRiZbnDaUFQDiVEmTo73maBWZmBevXXC4q0DVeBZIHQdqnhsOpZ0p+fKkORdiGmMudqie4B1Q8wtyrRZpxGh7DIwzzOtZADKkXWHCbW6HaKhg8AhpPnVvuCLVPC5Kw4Q6lxSFoMpKTsRsQCOVNwA8/WdHH6dkVbb9ohWS6A24SHGxCCTuP7DO16lhnVIhKgbCb9RaPajcfw9pKlh9K9StaioQvvBFjJvFqVKxHi2MJSjzKVzhV0pHfnPYUyJYNhNNNfnOL0MTNygAe4pBkhKWFad1rv6Af7miGmFOo8d4+UJhpE7CIBUBSzLMWAS2ReZHuYP70p/cKgZ8jMQfpHycN4bbaifMsqJHQAJi/eTSzGOXp1mqCGkK729CP+KQ4pQqMijU+s9Jyj8MteLEmxirQeVe/wBSRsaXF69SS/W7KNidkvuEYPYwxQfjkmhsS9UsI4KZ7qswAoAuGIUYqKEyanyq3L/ivSySe4INcxtlLelNLuMcCNIcG8X9LT+h+dO2BakOeulWpM2g/OIpinbVzma7EMuJgfkZm2Rc0w4byJWNxAQja2pXKOZpfgGVKlaoCSSkzuALbVseAMejDoe1EIKkEeIo2Rayrb78qq4BqfHqnzjnFcTN4NDmFwjcaRpDs3K9lqjn273rB5g0pyZUVXJkmbncz1POiWzaYIkc+hqDiREC/pSDlYn7QGJJ5iUYcg0YhZRaQQJ9+4plgMoLriEk6EmSVRNgCbDntHvSrF4ZSFELBBHIiD8qZu3cGZt4mg4e4jUyDpAJmYVy6x1m1bXH5ujWlVynoK+St6gZ5/atlmOMDeBw7rapW6ooMj4dMlW/MWA9aYAaKnr+I3Fk2gg9TT4jMWMQkgqII2CjEzaBH2rN5nl2lE6CJMbzJpdgMwAAQQouG4nmTtJPbp0p3i8bh2leG44dXJMXAtcj8u+xvbaoE0QVrRj9jMcq/PUTIYUkgKg8vfkD3qvGMgFCRckzaNhv77UZmOaMJCkgDVEgkieogA+hvS5eNbWrWfJYgAAwL9hHr8qaMdPY6ETS3xNHhMWyB4T3iNkmNgYJN7dtzao/0YbcICtSfyqg3HvSJ7GNwZTqMiBpP/kRzGw+ZrTusH+nQspCkHbzEkA3AK0jcCAfSpNQtAFRVmjBYWOJTiVplRNxpSkep39LUlnvR+bYBeqRYFOrSDJ07Te5G1450OliwtypSAKO4oqZl8aS4sgCEg2H7zVSmQB1P8vT5vLE+Et1xwNyPwgYlapAI3kb0Qjgx0YdWIcUlCRcJ3UoHn2FdgsSeI1UHmZlACR6iuRWly/KsOfDcXJQVKCjqIsElQ29DVOZ4/BKENsr8ohJmE+pG5961QGXdc8ariCKSXQ0hCNJAgqB37kVv8iyZpltKl/z/eslwixqUpZ2Bgfc/pWgz/MyQEg7Cp0ZQx3eP5n0XpujrGHHZ8/IQfip1BnRWcwuMKTE0zUnWL0pxWFgntTDuJ3CdjaoXaZZnWMUGzovqEEftSPLNStU/CBJuBJ2EzyA+1EyvUAATJgDrT5nIFMpS5p+NUK9YJHtY79qZvpTxOL6hpT/AOwHqCYNDhJ1AwD8WwIPQ87dtvamGEy5pOla1p1J1R1hUfa/zrzOQpKwLn7UsxLayJ+VKDDcbEcnpuIKGJu47zTGBSUgGU+kW2A9qSY0dKtzdzwmtO5AA9+Z+dJ8uzHZCzc7Ht09a1se73CJ9O1ATI2NersTlm9WMqqT6KoUqKEcifSLkJEvcg1BuxqCXag47FaFPUYrk8Rmw91qxOJCTM0mGINRLtD8KzDoeZpMRnB0wDFKsfi/wz1UY+dBNyb8qEx7xmI8sfw0aYrYTmep6hMWAqvZ4l6X9Q1bKG55H171A4hThBJ8qbgdY5mg0OyCCbEz2opiFGB8P1P7CqWXbzPm8RbJSd1GzeJ1iFcuY5etWKa8sgi297x19P5ahGiU3FVeNEipdo8Rup0VDcsc5Vm7jTzai4vQDFjcDseR/amHGQZcKXm8Sp5SrKCwdSY2mwERArP4fDFSCQR5YsZ94Mco2PWrkNCLkz8qP2r3I8OlzZR7VgRaG9M8GvUlsKghtZUlCh5SFCFTfsPrUsNhGlG6iPXb6GjV8OFaT4T6CYI0kxMiLHlTPzD2mHk9P1CDqRzXM9aG1MsoaQgjQoDU4oxFiY8vYyTY0nxL4aVdsKWCdZcnVq5yknSD3j51qDk5/DK1BJbUVJbib2AJ5RCR6zVGYZItxYcS5+IfiUrn6gUBbmzI8gPR7mcw7qnSIAMTNwIG/M0UlsrSDISkTAAJUu/Yb3n0q5fDj4UoeQhRkn9Baw9N6dOZK2Et6NQctrBNiJveLWmOX3oXK/mEWBELYmxHm2g/pFG4fFu4adCjoVAPT0UPnvRmaYJNltpUladrG8c1Tz9K7Ms0DyAlQGm0gG6vWOkkipkykkMBx5EFbPIkm8SViLlG6FbltXMA9NxBsRUBjmz8ZGoWMCR7dqWYFZQVtnmPp1vVZwL/AP8AWo9CBYjqKPPhW93VwiD4lGJQlBOveSIO9jBrd4DFoxbTWGKwlamiVhBPKNOombwLiax+Lw7awFLI1K5hVwe4phwPlzqMW2toFYF16YkINiYO+4p98cTyAhtp6MRZslbRLJ2SqY/X5H60M4jSARfrWq/xFw04hbyUjQCEFU7rCZMegge1ZtqsPtNCeqaLhl3Sx6k/eqMwfk15lLifD0g/Cb+9/wB6Gxq6h5OQg/Ofaenuv4da+QheAxwG9FuKlGpIEq9NgYG56is34kU1whUtkklKEpBhRnYTJgfKa6GNjW0yX1bd8L2GrIjLJ8MkOpUUjyzMXgHeAn0+lPc2zBqUpKgEpIVHMnlAG+8+lKsE2htr4x4ukEAA9t52MHbtSbFumZvM3nf58xWFjtIA7nP0w3MMBeybNn+BHWJUkJUGwp2TJsEQe2ok0vxDwKwpxtSIjYApEbfCescqtwOPCUkV4l8lCl9TA9v9z9KYAoS75lWqQ4MZIJ/7mc4jXqIAuOvK/f6UiZwjjyyG0kxaeQA6mtNgklxxXllIMKkWM8h3rU8PZJrIaabAG5PJI/UnvQfG2e0CzF+n6U7TlbhfnMhhWPDA8Y6o6fud6X4l5Cj5RFfUuJeBHS15FatN9Jj3giN+/SvmGMwUEgi+xHQ0C9+8UZ9JpWGTETjYNXjyIGTXhVUVYcjYmhng4NjVAUHoxWXI2MWVP6cwkuV4h8SLT2peHVc+W814pwqJIAANM+F85y8vqfhR+8ZP43xJgx0A2qSGSsAgxa452pazAIvN+X703w+FUdgbnt871jAIJz8u7LkVgNxPiV/9PB3n50QxhAkWFGsYR0GDoUPU/eiF4c7c+liPnAqdnvjcJdjVkX24yP0gE0OpjWqOXOr8a2RGoFNxyt8xUsFCdPM/m6EyY9oisoqN0dhIzvt6+4qPmMA6tkaEfhp3VYSfe5odeFI33phlmNKknUonoJsParhgSvzGkkNk58zoqi4vbExYrwAg2NMH2dNCmkEspoxgox1k+PURpchQ5Tv7HeneWtIWFQduR3FZJlRFxRuBxag4FDnY05Xut3M5ut0KZlJAo+D/AGmhLAmrGWdRsBP6VSl2iMC4JmlmrnzASjRiTifBqbcCo1pKfMJNiOcSAeQiaV4N5AMFYaG/mCkz2sL+1OeMXgVIQFXIKiPf/as1jsKo2H/rz+VeDG9viIyGnIElmatTpWFpUkEAaZsOg1AE3+9HYDMkpbSFqMx/cRblakScOARCQFfLejXMS4qAnStKBpEtoMRJiTc3JPvTycZQAwTR7itWDSsalT5ZsOYiqsgz5/DLCm1kEWv06VfBvBg/f1pb4ISsBc6eeneO00eM2CDALHio+zPEuqSErcJS5+IEz/dz7GgksHSdN4v7Dc1fgsNrJVcNotqVsI5T1jlQuPxidKm2vKk7nmfXtXkU+Zsnwy8ht0+IohC4TfkeSppljsGoqKUjVfkRz2oThnKvFQQ5KkDaE7nse3607/og2Rp1juY/2ph0+5txlmn9RfTrtHMz2PwLjKgl1JTNxcEEc4IMVpsJgXHWtWkaAeZABKdhB3Sncgbx61a66hSmmX2/FJ80bQkT5ipPOJEc/eoM48qckphCCUtoHwpTESALTBN6JUIJUQ9XrTmVWbgi/t957hsGpSvOoBIuVSn7zf3pTmbw1KTB3i4g9iR8jT04MOTLeoRukAEzYGxmfURY0h4hyrwEpWHFETpAWkhQNzz5fLete1HAgaIfFygFqI6P9otS+eRrRYzCLbw6RHKPUm5+pNK+C8B42JTIlCPOr/xiB7qj2mtNxDiAtwI5D/ipCds7Oub4uVMQ+cv4YyJJRKvgSJP+ZXOtNwnjEoUpJjaSelyB9qRozAIw8JN9vr+1KMvzFQUqDvS01IUbq5udT8G2TEydAcAfafSc1zZHhqCCFEiPnavmmacPpNwKeYB6ede4t0bGugpGZdzQNNjOktV89z55jMqKSbUC5gDW3xbIVSfFYXSandXU+2dEZgw5mYVloO4pe7liydIv9vf960WJfAVA3mm2W5TYKIkn5CvfiGT6yLLoEzOGPH1iDK8iSiFKGo99vanjGBPSt7w9ww24nUsTS7MsBoUUgbGKVlx5XXeTG4c2BGOPGORMz/TAVylW0lKbbGIPzFNXsCobiKBfbioirDuWq4MHYWkeVxIKTQ+b5DoAdZOpB3HMVa4iaKwDsJKSd6ox5TVGJfGAdywPIW9RitilkBEVkcO54Tkj4VGD0CuR99vX1pu/nJ01VhzonBgZcDv7l6kseyDSPFNQasczMmqXHdVLzOjdTERk7kPFim2QpCzBpMRTnIWykzSU7hZPymGY13Q4RTLAOoS2t51WhtAkqO1Z/irE+BoWRqKjET0E3rPY3Mnn9IWr8MbN/lHeOZ704YiTu8T5DXFUzGowzfGKfe8cFKkmAkJIOkCwBg2PP1op3GtKaBAh5K9KvN8aIJkAC0EXvzrMrwyBcApP+Ux9NqKZxCtlFK+hIhQPrz9zRbFYd/vOVu3EwvFlU6gUySIBiRb+b1FhJi6CTO+30oR0gbmPW33q9pxUb/WnpiUD5wQ3zn0vPP8ADdt5WphwIk+ZJggf6Y29DVa+CcFhEhx/EOSnzbpAJHIJ0kms7nuZOYdxTSVRAEECFQR9OdI82zHEKbBdU6WztrKoJ7aqSufE4DIvca2RBfHMecSuPZigKZLaGEEhLcwrl5lWiTyk1i3OH3/ESlbZCSRsQQB3I2PrWj4WUBh1uJKioq0rj4BpukEC4BB370Th8SUyCkCxk7i0mxuR3/WmY8gNjyDRiyebkGtHwBRSBYIRAiNheZ+9TX5QCuSqbBRBj5AX7cqoYxnhEk+Zf/4mwA/X0ppkWXDEfiOmG0nYbrVeRPQbT2pqG2i6uCtNqcZWoGDsFRyBClR9PlS7DhzUpRIKZ3FjPdM/rWmxZCQYASZOlIO0W0j2pQXB5ykwVCFpnkOXpTl7uCTGGUrCwUEqBAkaSAY5iSO0+1FZzgg9h1NlYVIlCiIKVC41fae5pBk2YhLqbwUkgi36+9X5njUElSREk7KVAJ3BTMRztFLci47C5Qhh2Jdwdhxh8Mt1dlOH30okAe51H5UvZxBdWtfyqWZZqXGkIAAtFuQFv0pdlbulUTaCkTz2NvkajdbBM62mzF9SHPzjLGYnykDqD9KDbfKTIr3FuUEXKiVQRPtseWxNBg81gV5js2nnSJLkVW46aejso2iayKTcatZiaEzXNIFt6GbXSzMHZUabjZiaiiq3cY8PI8RxSzyEe5/2+9bjDqShusNw45A9TWhcxttNDkyhWImhN9R7lefLQYBtThvEBxWo7msOw9BmtBl+PEb0emzFhTGI1WlUHco5jXMGgRWcx+GppiMxHWlr+LBp2UI3EDEjqIndTFD+LeicwWOVLhUDAA0JcnI5jHGZcVMqXSvD5gFohXxCx/etPg1zh1J6188fVDih0UfvTlxq3H6xaZSlgx20Zoki1J8HiDTIPQL0l0IMB3BMtY3rQ5asSBWUViANjRGWYhSnUgHc0SgjxE5SK5Mv/wAUHgSyidtSj9AP1rL5UYIUQVXuCTcDlIMi3Sm+aODEYhWyk2Qieg5+5JPvVaMCJXA0hMC3pVYel2+Z8TrH+JlZgf8ARCuJsThlR4DSk32JkRHIyST60oUjSecUUWxr0k6Rbr6/vXKy9RnUdNzFvrQ414qSUTzCMI0VIlPm/uT/AGyYEgiJMSKNXhXEWU2pJ3jQdjzpbh0lHlne4tv37Vr8l4qCWglwEqFpk7fKqUFDgTDx3CMuaQ+6XHkgq0/9yCYI6JFiqO1XcVcBlxCl/wBS6oBMoSuCkK6GwibAWtROUtPYdQXZAKdRCkkhSYnymfMqLaTBrSZliJbJB3F+Vj2qTDiRPHI6/wAR4UFeZ8lTw6/glS+pbaFJBlvzBQnYwYEf5var28+w2o6GVKWAYUtQBPoIPyr6JlS8PiwthxCNSPyHmFW1Am+4P0r5/wAScKM4R1UPBw6yUNJBKkt7gqV/dyj37U2hW+/p9Ytl2i/EEyRxC3FKWhSki9zCZ6Ki5HYEVrP6lsQQhCQn4UAkJ1WkACwi3WTWGOOUvyJTANoHX962OEQlLiVFYOmI5pKyZAhKSReT7XrDdcGLVrlua4UlYTYmJg95ms1xO9/S6PN4hV+WYKY77xf71oc7xP4qlHVIURqvIjoenrWQ4yAeW2tNpGkxsTMgj1m/pVG6hRmf/USt4s61ubKXcbGL7bdq0zGXr8Bt5awCsToP9p2MzaReO4pJwtkhefAWkhCPMsnYpHL3MD3NabOsT4i4FgOm0UrIfAjqi3QAN+tzyG5P3+VK8M2+++jwkqI1BCABYqMwJ2kwSb7dhV2c4siG0xKo1dk8k++/y61Lg/MwzjMOsqIbQ6Cqfhi6dUdgVX715FocxyuVYVxDM0QpC1IWNK0qKVDoRY0Dqref4mYZp5ScQzeU/iFMaSmQlC55mTp+VYBwRU7IFYrPrNJqtyi+5cHKjrmhtdTBrNtTojLLNVBY5r81ETVGIWTamIKMTlywrh9z7mmzzl6Q5R5VR1po4qkZk99w9PnBqHIeq1OII50qbdipqepPwyDxOgXDCFu5go86i3iSedAa6mhyKMqYLEVDXlV4yiTXglSQRVuGWBvSxAJoRwoaWwkc7V8+xSvxF/6j96268YFkJmBuVdEgSo+wBPtWTGSOlIeWlfhqNlgWJM2CtuR+VWacXZnH1uoXHVn6wZp+DarnMWpcACSbADck7ADrVjWXN2JKj2BAP1TWkyThxsLQ6krVHmSkkXsYk6eW/qK3M+PGNzTnP6tiUX5+0z6srxCTCmnE3iSkxPTVt9anisSGAW0/GoQpXQHdKe52J6etaLjLGaUJQUhMkqgc53MwJ9e9ZFxRNjt/IrMD/EXcRU52b1PJlWupyErHmC4jaB+9e4TFuao8RQ1GTqAIJHarUJOkkdLfaqmUkqCouDTQfM5nMPdQ4QNWhQTYESkxM9Dz+9XPOqVpIQtPmuZBAHYgz15CrG99rdPWhVrVBCSYPLoRM/tWDIhFwgykXGTzIWgKCRqBMxFhv9bfKgfeh/8AqhQNJv8Az+fOil4ZKyT8vTf9aqxkEcQMlE3PsisuabQQcQpKVbJcKVATy0rE/avCApMTrCfKSLXG8g/a9ZPgDOMO47DhBeiSVbWgeU9eZr1XFgbxLqkp1tOKkQYMAQFJ9Y+1TjIOzQ+kpLKQDL8Vg0h9FiQFagqexFyL2tbvWXf4mOW43E+G0hwOaT5iSUSJUlJ949hTTiHjtktwGnL81ECDe4iZrFnLlvOeKuQ2tX/cIJEHaOpjkK9a9iI5B9sZYDO14nEOOeCggwdShKkJE2TESomPNHKn2WY2VBSRZCtJsJUqAQozsANue1SwOUNMI0thSiqPjHmMwJIAgX+Ve5qgNOISAAkRYCL9T1gfetCrYMwkyvPX/OTz5n/MLbdIrBcWOlLg0kgKE25Ebx9612c5iEErPSYO4n7is1wrkwxGI1qktNHWoHnfyI9z9AaYGHZnsYF2ZockwhwuEAWT4rnnXO4B+FHaBf1UaEdWAlSzyEnufyp9zRmbYsuLPQUHjMOPCKysAhQCUblSjuo9AkW9TU/LG4wXyYhWkkFSj5lGJO1978t6tzHKzh9KQtCysAyhQIE2iRaaYDFlptQbOhQTpnTM3m0g1sv8PcswGKB/CcQ80hBLmsgqcJVqWADp3AgEbcqJCWbuh/M1V3Gokz9LOAZSyyAXS0prEIK1LR5ghYdQbAHUAbQJG3OlWcP4PwGHWXFeKfI82r4goCfETYSkwfmK+hcZMBp/CKxim3GA4Rr0Q5YSEuBPlUnUASQB6dfm3GGVJaxLwQttxtw+K2tEQAuTpEG0bR6U5lFndKVyPiO5TAQsKukzUtVBJbMAJEk0ZhmloTrK1TMQFGJ3m3/FxSdglmP1V+mEmzhVr+FJPoJ+1SeaQ0YdVB/tT5l/IWHuRVwWtwALUojpJPyFbHg7gNvEhWJxCglGyUhQnyiPN0Ajbc/fE5aqm5Ne7j2ipk8hyTFY5zTh2tKAZKibD/Wv9B9avzbAKYdU2ohUEgKT8JgwY9DYim7rS8O8oMPq8hIlJgEDpFo7UCt8SUuwQq5k8yZmfy3JvyJPImktlVzVcxWl1xxubN33FCxVYcNMcVlKxJblY/t/OP8Ax/N6j5ClhNeAn0eDWK44Mma5NRSa9C4r1SwZxD28SUp0i361V41DoJUYAJPQVe9hVt/9wFJOyTZR7kbpHcxPKaEY7ic2rx41LMZHMHFhEJITrBEmRKdjB73Fu4p0ripSsvTgPDTpT+e8wFahCRsQed7UmxmKW8QVAHSNKQAAlKRskDkPqecmqQlQsBbqP1qtF2rU+O1erbNkLf7UkGzvEevOmOU5qpvyOJ1NEwRvp2uO3alsd96mWFRMRQZEV12kSFuRRlnEeLS6+opJKR5U3NwOYnYE8qN4o4TXgkNLWtKkuiQQCIVpBKDNudjzg0C2wLEgHvRWfY57FIh5eyQEp/KCiydIG0jn3NEFCIF+wuEhWo//AMNuGWcX44enypSE6TBkk+b2gC9vNSnjHhheAe06tSFDUhXOAYgjqKF4P4kcwiVLQAVrQWwo/lkgyBzPlG9WY7iB5/T4p16UBAUu5IBJv3M39BREe0KBzDtAvPcGZeCwCDcbjvUXHdyBaffofqKg4Wl3JAPVEz/xVKGCCVJGpJJ6/Y1McO08yfgEkeZQ4xrdA5E3j9PtTWCm0C3el61BC21jkR9CDerH8SnUaqwsKm1Ymz/xJ4bbaQnE4caFpUEkJG4gwQBzAHyrMYjN0JYQZBWREDcHnPSurq9lQEiaeGNTU8G8EN4nDDEYoFZcSQ2mSEtoJsoQbqJk3tEWrV47L2kMhlICWkp0BP0EGZmefWurqKqAqP2ipmMc08nzMgFDUWi4sUz/AJgBO1Kc1zHxYdJjTp8kdNUqB9SK6uoJP5ifO321IVr1G4CQk7qIm5INhH0FNsKx/S4ZDX/yr8zn+oiyfYQPWete11C3QhL3FeJf0IUvny/1Hb5b+1D4YHw0qVvBV+ifreurqEdGMMigTbf1o7IM2UwpDoSnyqOpJmCQbW511dU/+IOPuXY/iQ4/FNHESG/ESISTCG5AVA6mbq3onjfJcKy8PAWFNqAUUgzoMnyg9Iixk11dVYNgxoYm7mfhSzpQn2H6mthwJwc3iT+KswiVEJ5yQI1ex2rq6vY+WFxmNRD+L/8ADB67mDekAGWlnSSDySsWO+yh718tGIfwjhSfEaWDCkqBB9xsod711dVj41EzIORHuU5y07ZZ0L6/lP7faqM+SoiSIj7V7XVzcmNUcESfaAeJTlWPckIPmSNpsUjsr9DIpoVJdBKkkxzO/wA966uoXHujceRl6Mo/p2zMBVvTfpXYdpm+sLG0RHvJ5fWurqpCCM/HZvnJjFFk/gqbbHMyNcdlG/8A6xQa06laviJMkmTc866uoMY5iXys/wCYySmusD+dKuQyn4iSe21eV1MipJbsQkC8bfvU1WTc+sV1dRiLbuQ+FN7GCTU1kwJ6T+9dXUQ6gxc1hUayqCCeh8qjy9D2qxLcflB+/wBa6uryxjz2R0/ntaiMNCRsQn1sCe1eV1GygrzMXuA4xoqm4udjyI5j+c6Xwf4a6uqXH2Z5u5//2Q==',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 4.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Tomatoes',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .dark600,
                                                          fontSize: 18.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF57636C),
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x411D2429),
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 4.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Corn',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .dark600,
                                                          fontSize: 18.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF57636C),
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
