import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newspage_model.dart';
export 'newspage_model.dart';

class NewspageWidget extends StatefulWidget {
  const NewspageWidget({Key? key}) : super(key: key);

  @override
  _NewspageWidgetState createState() => _NewspageWidgetState();
}

class _NewspageWidgetState extends State<NewspageWidget> {
  late NewspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewspageModel());
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
            context.safePop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).dark600,
            size: 32.0,
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
                    Image.asset(
                      'assets/images/news.jpg',
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 230.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 0.0, 0.0),
                      child: Text(
                        'China\'s weekly wholesale prices for agricultural products fell',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).dark600,
                              fontSize: 19.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 4.0),
                      child: Text(
                        'BEIJING, June 7 (Xinhua) -- The wholesale prices of China\'s agricultural products fell during the week from May 26 to June 1, data from the Ministry of Agriculture and Rural Affairs showed.\n\nIn the period, the China farm produce wholesale price index came in at 122.03, down 0.23 points week on week and rising 0.91 points from the same period last year, according to the ministry.\n\nThe average wholesale price of pork, China\'s staple meat, edged down 0.5 percent weekly to 19.28 yuan (about 2.71 U.S. dollars) per kg, which also fell 8.1 percent year on year. The figure for eggs edged down 0.2 percent week on week and decreased by 3.5 percent year on year in the same period.\n\nThe average wholesale price of 19 key vegetables tracked by the government rose 1.1 percent from the previous week, while that for six key types of fruits dropped by 0.5 percent weekly, the data revealed.\n\nThe wholesale price index is compiled based on data from over 200 agricultural wholesale markets. It is updated daily based on the weighted average of price indices for goods, including vegetables, fruits, aquatic products and livestock products.  ■',
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
          ],
        ),
      ),
    );
  }
}
