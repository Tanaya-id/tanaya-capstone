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
import 'lateritesoil_model.dart';
export 'lateritesoil_model.dart';

class LateritesoilWidget extends StatefulWidget {
  const LateritesoilWidget({Key? key}) : super(key: key);

  @override
  _LateritesoilWidgetState createState() => _LateritesoilWidgetState();
}

class _LateritesoilWidgetState extends State<LateritesoilWidget>
    with TickerProviderStateMixin {
  late LateritesoilModel _model;

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
    _model = createModel(context, () => LateritesoilModel());
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
                        'Laterite Soil',
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
                        'Red or laterite soil tends to have a reddish color due to iron oxide oxidation. This soil usually has poor drainage and low nutrient content. However, it can be cultivated and suitable for plants that tolerate such conditions.',
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
                                                    'Coffe',
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
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ3a_ioK6Z6aQQ5_WHx2EQBiVxP_IhUjbnuuBBbbzo5UPjDsrcD0BZQUZG1sbSwMLDtBs&usqp=CAU',
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
                                                    'Mangoes',
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
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRgpB6bD6yLZ-oP2BoEo7iw1MsSz6F3K2HLWlqXI0LpDTrZ1Y3pR_DU2iQFx-C6agktsQ&usqp=CAU',
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
                                                    'Bananas',
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
