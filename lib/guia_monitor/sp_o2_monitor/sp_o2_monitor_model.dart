import '/flutter_flow/flutter_flow_util.dart';
import 'sp_o2_monitor_widget.dart' show SpO2MonitorWidget;
import 'package:flutter/material.dart';

class SpO2MonitorModel extends FlutterFlowModel<SpO2MonitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
