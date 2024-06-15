import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_tema_widget.dart' show AjustesTemaWidget;
import 'package:flutter/material.dart';

class AjustesTemaModel extends FlutterFlowModel<AjustesTemaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
