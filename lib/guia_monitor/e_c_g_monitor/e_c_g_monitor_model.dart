import '/flutter_flow/flutter_flow_util.dart';
import 'e_c_g_monitor_widget.dart' show ECGMonitorWidget;
import 'package:flutter/material.dart';

class ECGMonitorModel extends FlutterFlowModel<ECGMonitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
