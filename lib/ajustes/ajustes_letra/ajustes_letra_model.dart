import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_letra_widget.dart' show AjustesLetraWidget;
import 'package:flutter/material.dart';

class AjustesLetraModel extends FlutterFlowModel<AjustesLetraWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
