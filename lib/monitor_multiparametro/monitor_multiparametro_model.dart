import '/flutter_flow/flutter_flow_util.dart';
import 'monitor_multiparametro_widget.dart' show MonitorMultiparametroWidget;
import 'package:flutter/material.dart';

class MonitorMultiparametroModel
    extends FlutterFlowModel<MonitorMultiparametroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
