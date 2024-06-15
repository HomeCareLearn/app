import '/flutter_flow/flutter_flow_util.dart';
import 'guia_monitor_widget.dart' show GuiaMonitorWidget;
import 'package:flutter/material.dart';

class GuiaMonitorModel extends FlutterFlowModel<GuiaMonitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
