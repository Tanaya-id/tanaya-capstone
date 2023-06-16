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
import 'yellowsoil_model.dart';
export 'yellowsoil_model.dart';

class YellowsoilWidget extends StatefulWidget {
  const YellowsoilWidget({Key? key}) : super(key: key);

  @override
  _YellowsoilWidgetState createState() => _YellowsoilWidgetState();
}

class _YellowsoilWidgetState extends State<YellowsoilWidget>
    with TickerProviderStateMixin {
  late YellowsoilModel _model;

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
    _model = createModel(context, () => YellowsoilModel());
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
                        'Yellow Soil',
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
                        'Yellow soil refers to soil with a yellowish color, usually caused by mineral content such as iron or clay. Yellow soil can vary in texture and properties depending on the specific geographical and environmental conditions of the location.',
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
                                                    'Pineapple',
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
                                                    'Tumeric',
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
                                                    'Ginger',
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
