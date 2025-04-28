import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'template_selector_page_model.dart';
export 'template_selector_page_model.dart';

class TemplateSelectorPageWidget extends StatefulWidget {
  const TemplateSelectorPageWidget({super.key});

  static String routeName = 'TemplateSelectorPage';
  static String routePath = '/TemplateSelectorPage';

  @override
  State<TemplateSelectorPageWidget> createState() =>
      _TemplateSelectorPageWidgetState();
}

class _TemplateSelectorPageWidgetState
    extends State<TemplateSelectorPageWidget> {
  late TemplateSelectorPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplateSelectorPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        top: true,
        child: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await actions.makeAndShareScreenshot(
                              context,
                            );

                            context.pushNamed(DailyQuoteWidget.routeName);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                valueOrDefault(
                                    currentUserDocument?.userTemplatePreference,
                                    ''),
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/x95arvgdi4ie/Underwater.png',
                              ),
                              height: 900.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) =>
                              StreamBuilder<List<QuotesRecord>>(
                            stream: queryQuotesRecord(
                              queryBuilder: (quotesRecord) => quotesRecord
                                  .where(
                                    'QuoteTheme',
                                    isEqualTo: currentUserDocument?.userTrack,
                                  )
                                  .where(
                                    'QuoteDateString',
                                    isEqualTo: dateTimeFormat(
                                        "yMd", getCurrentTimestamp),
                                  ),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<QuotesRecord> textQuotesRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final textQuotesRecord =
                                  textQuotesRecordList.isNotEmpty
                                      ? textQuotesRecordList.first
                                      : null;

                              return Text(
                                valueOrDefault<String>(
                                  textQuotesRecord?.quotetext,
                                  'Shift the Tides... Loading..',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lora(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: valueOrDefault<Color>(
                                        currentUserDocument?.userTemplateText,
                                        FlutterFlowTheme.of(context).alternate,
                                      ),
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            },
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
      ),
    );
  }
}
