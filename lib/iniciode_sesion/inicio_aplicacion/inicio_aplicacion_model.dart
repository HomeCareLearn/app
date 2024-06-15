import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_aplicacion_widget.dart' show InicioAplicacionWidget;
import 'package:flutter/material.dart';

class InicioAplicacionModel extends FlutterFlowModel<InicioAplicacionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
