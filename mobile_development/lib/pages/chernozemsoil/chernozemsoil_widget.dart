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
import 'chernozemsoil_model.dart';
export 'chernozemsoil_model.dart';

class ChernozemsoilWidget extends StatefulWidget {
  const ChernozemsoilWidget({Key? key}) : super(key: key);

  @override
  _ChernozemsoilWidgetState createState() => _ChernozemsoilWidgetState();
}

class _ChernozemsoilWidgetState extends State<ChernozemsoilWidget>
    with TickerProviderStateMixin {
  late ChernozemsoilModel _model;

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
    _model = createModel(context, () => ChernozemsoilModel());
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
                        'Chernozem Soil',
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
                        'Black or chernozem soil is highly fertile and rich in organic matter. It is typically dark in color and contains abundant nutrients, making it favorable for agriculture. It is commonly found in areas with dense vegetation.',
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
                                                    'Wheat',
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
                                                    'Sunflower',
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
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAA2Glybz6JzvCkNTBWDTF7tkCNO44ZxOYYQ&usqp=CAU',
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
                                                    'Potatoes',
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
