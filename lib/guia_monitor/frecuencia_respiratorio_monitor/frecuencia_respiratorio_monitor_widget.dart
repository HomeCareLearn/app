import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'frecuencia_respiratorio_monitor_model.dart';
export 'frecuencia_respiratorio_monitor_model.dart';

class FrecuenciaRespiratorioMonitorWidget extends StatefulWidget {
  const FrecuenciaRespiratorioMonitorWidget({super.key});

  @override
  State<FrecuenciaRespiratorioMonitorWidget> createState() =>
      _FrecuenciaRespiratorioMonitorWidgetState();
}

class _FrecuenciaRespiratorioMonitorWidgetState
    extends State<FrecuenciaRespiratorioMonitorWidget> {
  late FrecuenciaRespiratorioMonitorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrecuenciaRespiratorioMonitorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 44.0,
                          icon: const Icon(
                            Icons.arrow_back_sharp,
                            color: Color(0xFF57636C),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('GuiaMonitor');
                          },
                        ),
                      ),
                    ),
                    Text(
                      'Frecuencia respiratoria',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                  child: Container(
                    width: 809.0,
                    height: 721.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 0.0),
                          child: Text(
                            'A continuación se mostrará como iniciar la medición de frecuancia respiratoria en el monitor',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/V1p50MJG_nI',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
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
      ),
    );
  }
}
