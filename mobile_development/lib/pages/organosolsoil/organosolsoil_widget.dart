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
import 'organosolsoil_model.dart';
export 'organosolsoil_model.dart';

class OrganosolsoilWidget extends StatefulWidget {
  const OrganosolsoilWidget({Key? key}) : super(key: key);

  @override
  _OrganosolsoilWidgetState createState() => _OrganosolsoilWidgetState();
}

class _OrganosolsoilWidgetState extends State<OrganosolsoilWidget>
    with TickerProviderStateMixin {
  late OrganosolsoilModel _model;

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
    _model = createModel(context, () => OrganosolsoilModel());
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
                        'Organosol Soil',
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
                        'Organosol is soil rich in organic matter that has not fully decomposed. This soil is typically fertile and has good water retention capacity. It is suitable for agriculture and plants that require moist conditions.',
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
                                                    'Carrots',
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
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjgflcVlU8VZ7013SOGjm_v9aGLsH1wBMnXg&usqp=CAU',
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
                                                    'Onions',
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
                                                    'Garlic',
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
