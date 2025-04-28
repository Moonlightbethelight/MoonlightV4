import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/text_color_chooser_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'template_preview_page_model.dart';
export 'template_preview_page_model.dart';

class TemplatePreviewPageWidget extends StatefulWidget {
  const TemplatePreviewPageWidget({super.key});

  static String routeName = 'TemplatePreviewPage';
  static String routePath = '/templatePreviewPage';

  @override
  State<TemplatePreviewPageWidget> createState() =>
      _TemplatePreviewPageWidgetState();
}

class _TemplatePreviewPageWidgetState extends State<TemplatePreviewPageWidget> {
  late TemplatePreviewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplatePreviewPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 799.8,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 400.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                key: ValueKey('shareQuoteContainer'),
                                height: 400.0,
                                decoration: BoxDecoration(
                                  color: Color(0x33000000),
                                ),
                                child: Container(
                                  width: 210.4,
                                  height: 346.33,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.userTemplatePreference,
                                                    ''),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/x95arvgdi4ie/Underwater.png',
                                              ),
                                              width: 210.4,
                                              height: 400.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<QuotesRecord>>(
                                              stream: queryQuotesRecord(
                                                queryBuilder: (quotesRecord) =>
                                                    quotesRecord
                                                        .where(
                                                          'QuoteTheme',
                                                          isEqualTo:
                                                              currentUserDocument
                                                                  ?.userTrack,
                                                        )
                                                        .where(
                                                          'QuoteDateString',
                                                          isEqualTo: dateTimeFormat(
                                                              "yMd",
                                                              getCurrentTimestamp),
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
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<QuotesRecord>
                                                    textQuotesRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textQuotesRecord =
                                                    textQuotesRecordList
                                                            .isNotEmpty
                                                        ? textQuotesRecordList
                                                            .first
                                                        : null;

                                                return Text(
                                                  valueOrDefault<String>(
                                                    textQuotesRecord?.quotetext,
                                                    'Shift the Tides... Loading..',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.lora(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.userTemplateText,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.05, 0.99),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height: 400.0,
                                      child: TextColorChooserWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Icon(
                            Icons.color_lens,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 34.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Container(
                            height: 124.72,
                            child: Stack(
                              children: [
                                ListView(
                                  padding: EdgeInsets.fromLTRB(
                                    16.0,
                                    0,
                                    16.0,
                                    0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 110.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/x95arvgdi4ie/Underwater.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/x95arvgdi4ie/Underwater.png',
                                            width: 92.57,
                                            height: 100.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: 110.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              userTemplatePreference:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/4lcd8lzwe2us/FlowerTemplate.png',
                                            ));
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/FlowerTemplate.png',
                                              width: 100.0,
                                              height: 80.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 110.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/m2p4wfoqubin/Tonal_Background.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/m2p4wfoqubin/Tonal_Background.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 110.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/lffkwa420wte/FadeFde.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/FadeFde.png',
                                            width: 100.0,
                                            height: 80.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 110.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/zet2lshqo0io/ClimbTemplate.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/zet2lshqo0io/ClimbTemplate.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 110.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/v008q6gmxgqq/Mountains.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/v008q6gmxgqq/Mountains.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 110.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            userTemplatePreference:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/p4gnu7wlxc5o/Bluetherapy.png',
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/moonlight-v4-194w6y/assets/p4gnu7wlxc5o/Bluetherapy.png',
                                            width: 100.0,
                                            height: 80.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.06),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                  TemplateSelectorPageWidget.routeName);
                            },
                            text: 'Preview and Share Quote',
                            icon: Icon(
                              Icons.share,
                              color: FlutterFlowTheme.of(context).info,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 37.6,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.lora(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(DailyQuoteWidget.routeName);
                            },
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
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
