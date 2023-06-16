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
import 'sandysoil_model.dart';
export 'sandysoil_model.dart';

class SandysoilWidget extends StatefulWidget {
  const SandysoilWidget({Key? key}) : super(key: key);

  @override
  _SandysoilWidgetState createState() => _SandysoilWidgetState();
}

class _SandysoilWidgetState extends State<SandysoilWidget>
    with TickerProviderStateMixin {
  late SandysoilModel _model;

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
    _model = createModel(context, () => SandysoilModel());
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
                        'Sandy Soil',
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
                        'Sandy soil consists predominantly of sand particles. It has good drainage but low water-holding capacity. Sandy soil often requires additional fertilization and proper irrigation for agriculture',
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
                                                    'Beets',
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
                                                    'Peanuts',
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
                                                    'Sweet Potato',
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
