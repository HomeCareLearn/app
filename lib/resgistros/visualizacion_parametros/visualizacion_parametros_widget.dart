import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'visualizacion_parametros_model.dart';
export 'visualizacion_parametros_model.dart';

class VisualizacionParametrosWidget extends StatefulWidget {
  const VisualizacionParametrosWidget({super.key});

  @override
  State<VisualizacionParametrosWidget> createState() =>
      _VisualizacionParametrosWidgetState();
}

class _VisualizacionParametrosWidgetState
    extends State<VisualizacionParametrosWidget> {
  late VisualizacionParametrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualizacionParametrosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
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
                            context.safePop();
                          },
                        ),
                      ),
                    ),
                    Text(
                      'Visualización ',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 10.0),
                        child: Text(
                          'Parámetros fisiológicos visualizados a través del\ntiempo',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Saturación de oxígeno',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: StreamBuilder<List<ParametrosFisiologicosRecord>>(
                        stream: queryParametrosFisiologicosRecord(
                          queryBuilder: (parametrosFisiologicosRecord) =>
                              parametrosFisiologicosRecord.orderBy('time'),
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
                          List<ParametrosFisiologicosRecord>
                              chartParametrosFisiologicosRecordList =
                              snapshot.data!;
                          return SizedBox(
                            width: 370.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.time)
                                      .toList(),
                                  yData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.spO2)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: const Color(0xFF59CFF8),
                                    barWidth: 2.0,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: const Color(0x4C39ECEF),
                                    ),
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showGrid: true,
                                borderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderWidth: 1.0,
                              ),
                              axisBounds: const AxisBounds(
                                minY: 50.0,
                                maxY: 110.0,
                              ),
                              xAxisLabelInfo: AxisLabelInfo(
                                title: 'Día',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                reservedSize: 32.0,
                              ),
                              yAxisLabelInfo: AxisLabelInfo(
                                title: 'SpO2 [%]',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                labelFormatter: LabelFormatter(
                                  numberFormat: (val) => val.toString(),
                                ),
                                reservedSize: 40.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Frecuencia cardiaca',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: StreamBuilder<List<ParametrosFisiologicosRecord>>(
                        stream: queryParametrosFisiologicosRecord(
                          queryBuilder: (parametrosFisiologicosRecord) =>
                              parametrosFisiologicosRecord.orderBy('time'),
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
                          List<ParametrosFisiologicosRecord>
                              chartParametrosFisiologicosRecordList =
                              snapshot.data!;
                          return SizedBox(
                            width: 370.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.time)
                                      .toList(),
                                  yData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.frecCardiaca)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: const Color(0xFFF85959),
                                    barWidth: 2.0,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: const Color(0x4CEF5039),
                                    ),
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showGrid: true,
                                borderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderWidth: 1.0,
                              ),
                              axisBounds: const AxisBounds(
                                minY: 0.0,
                                maxY: 150.0,
                              ),
                              xAxisLabelInfo: AxisLabelInfo(
                                title: 'Día',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                reservedSize: 32.0,
                              ),
                              yAxisLabelInfo: AxisLabelInfo(
                                title: 'RC',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                labelFormatter: LabelFormatter(
                                  numberFormat: (val) => val.toString(),
                                ),
                                reservedSize: 40.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Frecuencia respiratoria',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: StreamBuilder<List<ParametrosFisiologicosRecord>>(
                        stream: queryParametrosFisiologicosRecord(
                          queryBuilder: (parametrosFisiologicosRecord) =>
                              parametrosFisiologicosRecord.orderBy('time'),
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
                          List<ParametrosFisiologicosRecord>
                              chartParametrosFisiologicosRecordList =
                              snapshot.data!;
                          return SizedBox(
                            width: 370.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.time)
                                      .toList(),
                                  yData: chartParametrosFisiologicosRecordList
                                      .take(5)
                                      .toList()
                                      .map((d) => d.frecRespiratoria)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: const Color(0xFF4671F8),
                                    barWidth: 2.0,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: const Color(0x4F6F8FF9),
                                    ),
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showGrid: true,
                                borderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderWidth: 1.0,
                              ),
                              axisBounds: const AxisBounds(
                                minY: 0.0,
                                maxY: 60.0,
                              ),
                              xAxisLabelInfo: AxisLabelInfo(
                                title: 'Día',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                reservedSize: 32.0,
                              ),
                              yAxisLabelInfo: AxisLabelInfo(
                                title: 'Frecuencia respiratoria',
                                titleTextStyle: const TextStyle(
                                  fontSize: 14.0,
                                ),
                                showLabels: true,
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                labelInterval: 10.0,
                                labelFormatter: LabelFormatter(
                                  numberFormat: (val) => val.toString(),
                                ),
                                reservedSize: 40.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Temperatura',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: StreamBuilder<List<ParametrosFisiologicosRecord>>(
                        stream: queryParametrosFisiologicosRecord(
                          queryBuilder: (parametrosFisiologicosRecord) =>
                              parametrosFisiologicosRecord.orderBy('time'),
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
                          List<ParametrosFisiologicosRecord>
                              chartParametrosFisiologicosRecordList =
                              snapshot.data!;
                          return SizedBox(
                            width: 370.0,
                            height: 230.0,
                            child: Stack(
                              children: [
                                FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData:
                                          chartParametrosFisiologicosRecordList
                                              .take(5)
                                              .toList()
                                              .map((d) => d.time)
                                              .toList(),
                                      yData:
                                          chartParametrosFisiologicosRecordList
                                              .take(5)
                                              .toList()
                                              .map((d) => d.temp1)
                                              .toList(),
                                      settings: LineChartBarData(
                                        color: const Color(0xFFF89946),
                                        barWidth: 2.0,
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: const Color(0x4CF8CC36),
                                        ),
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData:
                                          chartParametrosFisiologicosRecordList
                                              .map((d) => d.time)
                                              .toList(),
                                      yData:
                                          chartParametrosFisiologicosRecordList
                                              .map((d) => d.temp2)
                                              .toList(),
                                      settings: LineChartBarData(
                                        color: const Color(0xFFB972EA),
                                        barWidth: 2.0,
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: const Color(0x4CD986F5),
                                        ),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    showGrid: true,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderWidth: 1.0,
                                  ),
                                  axisBounds: const AxisBounds(
                                    minY: 0.0,
                                    maxY: 60.0,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Día',
                                    titleTextStyle: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    labelInterval: 10.0,
                                    reservedSize: 32.0,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Temperatura [°C]',
                                    titleTextStyle: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    labelInterval: 10.0,
                                    labelFormatter: LabelFormatter(
                                      numberFormat: (val) => val.toString(),
                                    ),
                                    reservedSize: 40.0,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 1.0),
                                  child: FlutterFlowChartLegendWidget(
                                    entries: const [
                                      LegendEntry(
                                          Color(0xFFF89946), 'Temperatura 1'),
                                      LegendEntry(
                                          Color(0xFFB972EA), 'Temperatura 2'),
                                    ],
                                    width: 150.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    textPadding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 2.0, 0.0),
                                    borderWidth: 1.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    indicatorSize: 5.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Presión no invasiva',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: StreamBuilder<List<ParametrosFisiologicosRecord>>(
                        stream: queryParametrosFisiologicosRecord(
                          queryBuilder: (parametrosFisiologicosRecord) =>
                              parametrosFisiologicosRecord.orderBy('time'),
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
                          List<ParametrosFisiologicosRecord>
                              chartParametrosFisiologicosRecordList =
                              snapshot.data!;
                          return SizedBox(
                            width: 370.0,
                            height: 230.0,
                            child: Stack(
                              children: [
                                FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData:
                                          chartParametrosFisiologicosRecordList
                                              .take(5)
                                              .toList()
                                              .map((d) => d.time)
                                              .toList(),
                                      yData:
                                          chartParametrosFisiologicosRecordList
                                              .take(5)
                                              .toList()
                                              .map((d) => d.presionD)
                                              .toList(),
                                      settings: LineChartBarData(
                                        color: const Color(0xFF46F86C),
                                        barWidth: 2.0,
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: const Color(0x4FB2F96F),
                                        ),
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData:
                                          chartParametrosFisiologicosRecordList
                                              .map((d) => d.time)
                                              .toList(),
                                      yData:
                                          chartParametrosFisiologicosRecordList
                                              .map((d) => d.presionS)
                                              .toList(),
                                      settings: LineChartBarData(
                                        color: const Color(0xFF72EADC),
                                        barWidth: 2.0,
                                        belowBarData: BarAreaData(
                                          show: true,
                                          color: const Color(0x4C95ECEB),
                                        ),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    showGrid: true,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderWidth: 1.0,
                                  ),
                                  axisBounds: const AxisBounds(
                                    minY: 30.0,
                                    maxY: 200.0,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Día',
                                    titleTextStyle: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    labelInterval: 10.0,
                                    reservedSize: 32.0,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Presión [mmHg]',
                                    titleTextStyle: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    labelInterval: 10.0,
                                    labelFormatter: LabelFormatter(
                                      numberFormat: (val) => val.toString(),
                                    ),
                                    reservedSize: 40.0,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 1.0),
                                  child: FlutterFlowChartLegendWidget(
                                    entries: const [
                                      LegendEntry(Color(0xFF46F86C),
                                          'Presión diastólica'),
                                      LegendEntry(Color(0xFF72EADC),
                                          'Presión sistólica'),
                                    ],
                                    width: 150.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    textPadding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 20.0, 0.0),
                                    borderWidth: 1.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    indicatorSize: 5.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
