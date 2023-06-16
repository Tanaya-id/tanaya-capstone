import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'corpdetail_model.dart';
export 'corpdetail_model.dart';

class CorpdetailWidget extends StatefulWidget {
  const CorpdetailWidget({Key? key}) : super(key: key);

  @override
  _CorpdetailWidgetState createState() => _CorpdetailWidgetState();
}

class _CorpdetailWidgetState extends State<CorpdetailWidget> {
  late CorpdetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorpdetailModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).dark600,
            size: 32.0,
          ),
        ),
        title: Text(
          'Corps Recomendation',
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).dark600,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'data:image/jpeg;base64,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',
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 230.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 0.0, 0.0),
                      child: Text(
                        'Sugarcane',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Urbanist',
                              color: FlutterFlowTheme.of(context).dark600,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'How to grow sugarcane',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF227B29),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 4.0),
                      child: Text(
                        '1. Identify a section of stem with two to three nodes. Look at a healthy sugar cane stem to find a section with two to three nodes. You should ideally look for nodes that have small nubs, which indicate buds. Cut this section away from the plant with a sharp knife.\n\n2. Remove sprouting leaves from the nodes. Clean the section of sugar cane stalk of any young or sprouting leaves with pruning shears, scissors, or your sharp knife, leaving only buds.\n\n3. Plant the section of stem. Create furrows in your soil where you can lay the stem cuttings horizontally. Alternatively, you can place the stems in a glass of water. Either way, make sure that at least one node and bud are completely covered by the soil or water. If you plant the roots in water, transfer it to the soil when the roots are at least two inches long and a new stem has appeared.',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).dark600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('tipstricks');
                },
                text: 'Tips and Tricks',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF07210A),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Urbanist',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
