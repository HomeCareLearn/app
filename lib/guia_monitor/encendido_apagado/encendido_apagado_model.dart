import '/flutter_flow/flutter_flow_util.dart';
import 'encendido_apagado_widget.dart' show EncendidoApagadoWidget;
import 'package:flutter/material.dart';

class EncendidoApagadoModel extends FlutterFlowModel<EncendidoApagadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
