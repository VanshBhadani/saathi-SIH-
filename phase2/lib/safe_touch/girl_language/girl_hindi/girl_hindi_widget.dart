import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'girl_hindi_model.dart';
export 'girl_hindi_model.dart';

class GirlHindiWidget extends StatefulWidget {
  const GirlHindiWidget({
    super.key,
    double? showOverlay,
    double? image,
  })  : this.showOverlay = showOverlay ?? 0.0,
        this.image = image ?? 0.0;

  final double showOverlay;
  final double image;

  @override
  State<GirlHindiWidget> createState() => _GirlHindiWidgetState();
}

class _GirlHindiWidgetState extends State<GirlHindiWidget> {
  late GirlHindiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GirlHindiModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/girl1.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.04, 0.87),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'homePage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.topToBottom,
                        duration: Duration(milliseconds: 600),
                      ),
                    },
                  );
                },
                text: 'back',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF501423),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(0.29, 0.57),
                child: Container(
                  width: 64.0,
                  height: 127.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Opacity(
                    opacity: 0.9,
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.soundPlayer1 ??= AudioPlayer();
                        if (_model.soundPlayer1!.playing) {
                          await _model.soundPlayer1!.stop();
                        }
                        _model.soundPlayer1!.setVolume(1.0);
                        _model.soundPlayer1!
                            .setAsset('assets/audios/Achasparsh.wav')
                            .then((_) => _model.soundPlayer1!.play());
                      },
                      text: 'Button',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(0.02, 0.04),
                child: Container(
                  width: 80.0,
                  height: 221.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer2 ??= AudioPlayer();
                      if (_model.soundPlayer2!.playing) {
                        await _model.soundPlayer2!.stop();
                      }
                      _model.soundPlayer2!.setVolume(1.0);
                      _model.soundPlayer2!
                          .setAsset('assets/audios/Galatsparsh.wav')
                          .then((_) => _model.soundPlayer2!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(-0.18, 0.56),
                child: Container(
                  width: 64.0,
                  height: 127.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer3 ??= AudioPlayer();
                      if (_model.soundPlayer3!.playing) {
                        await _model.soundPlayer3!.stop();
                      }
                      _model.soundPlayer3!.setVolume(1.0);
                      _model.soundPlayer3!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer3!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(-0.49, -0.02),
                child: Container(
                  width: 64.0,
                  height: 127.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer4 ??= AudioPlayer();
                      if (_model.soundPlayer4!.playing) {
                        await _model.soundPlayer4!.stop();
                      }
                      _model.soundPlayer4!.setVolume(1.0);
                      _model.soundPlayer4!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer4!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(0.51, 0.17),
                child: Container(
                  width: 64.0,
                  height: 127.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer5 ??= AudioPlayer();
                      if (_model.soundPlayer5!.playing) {
                        await _model.soundPlayer5!.stop();
                      }
                      _model.soundPlayer5!.setVolume(1.0);
                      _model.soundPlayer5!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer5!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(0.03, -0.43),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer6 ??= AudioPlayer();
                      if (_model.soundPlayer6!.playing) {
                        await _model.soundPlayer6!.stop();
                      }
                      _model.soundPlayer6!.setVolume(1.0);
                      _model.soundPlayer6!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer6!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(0.52, -0.21),
                child: Container(
                  width: 71.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer7 ??= AudioPlayer();
                      if (_model.soundPlayer7!.playing) {
                        await _model.soundPlayer7!.stop();
                      }
                      _model.soundPlayer7!.setVolume(1.0);
                      _model.soundPlayer7!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer7!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: AlignmentDirectional(-0.48, -0.21),
                child: Container(
                  width: 71.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.soundPlayer8 ??= AudioPlayer();
                      if (_model.soundPlayer8!.playing) {
                        await _model.soundPlayer8!.stop();
                      }
                      _model.soundPlayer8!.setVolume(1.0);
                      _model.soundPlayer8!
                          .setAsset('assets/audios/Achasparsh.wav')
                          .then((_) => _model.soundPlayer8!.play());
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.01, -0.96),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('GirlInfo');
                },
                text: 'i',
                options: FFButtonOptions(
                  height: 61.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle:
                      FlutterFlowTheme.of(context).displayMedium.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFFF8FCFF),
                            letterSpacing: 0.0,
                          ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
