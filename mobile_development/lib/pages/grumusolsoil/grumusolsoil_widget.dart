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
import 'grumusolsoil_model.dart';
export 'grumusolsoil_model.dart';

class GrumusolsoilWidget extends StatefulWidget {
  const GrumusolsoilWidget({Key? key}) : super(key: key);

  @override
  _GrumusolsoilWidgetState createState() => _GrumusolsoilWidgetState();
}

class _GrumusolsoilWidgetState extends State<GrumusolsoilWidget>
    with TickerProviderStateMixin {
  late GrumusolsoilModel _model;

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
    _model = createModel(context, () => GrumusolsoilModel());
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
                        'Grumusol Soil',
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
                        'Grumusol soil is formed from mineral deposits and partially decomposed organic matter. It has a good soil structure and is rich in nutrients. It is suitable for agriculture and plants that require good aeration.',
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
                                                    'Beans',
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
                                                    'Peans',
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
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ506lNgoCpVwVwrMDx-G0eXMz5xobTZzUmQ&usqp=CAU',
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
                                                    'Pumpkin',
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
