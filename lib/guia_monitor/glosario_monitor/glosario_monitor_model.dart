import '/flutter_flow/flutter_flow_util.dart';
import 'glosario_monitor_widget.dart' show GlosarioMonitorWidget;
import 'package:flutter/material.dart';

class GlosarioMonitorModel extends FlutterFlowModel<GlosarioMonitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
