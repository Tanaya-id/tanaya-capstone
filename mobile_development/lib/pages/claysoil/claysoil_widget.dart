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
import 'claysoil_model.dart';
export 'claysoil_model.dart';

class ClaysoilWidget extends StatefulWidget {
  const ClaysoilWidget({Key? key}) : super(key: key);

  @override
  _ClaysoilWidgetState createState() => _ClaysoilWidgetState();
}

class _ClaysoilWidgetState extends State<ClaysoilWidget>
    with TickerProviderStateMixin {
  late ClaysoilModel _model;

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
    _model = createModel(context, () => ClaysoilModel());
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
                        'Clay Soil',
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
                        'Clay soil has a high clay particle content. It tends to have poor drainage and is prone to erosion. However, clay soil has good water and nutrient retention capacity, making it suitable for agriculture if properly managed.',
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
                                                    'Soybeans',
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
                                                    'Peas',
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
                                                    'Cabbage',
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
