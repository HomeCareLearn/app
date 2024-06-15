import '/flutter_flow/flutter_flow_util.dart';
import 'simbologia_widget.dart' show SimbologiaWidget;
import 'package:flutter/material.dart';

class SimbologiaModel extends FlutterFlowModel<SimbologiaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
