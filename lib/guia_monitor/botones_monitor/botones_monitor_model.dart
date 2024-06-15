import '/flutter_flow/flutter_flow_util.dart';
import 'botones_monitor_widget.dart' show BotonesMonitorWidget;
import 'package:flutter/material.dart';

class BotonesMonitorModel extends FlutterFlowModel<BotonesMonitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
