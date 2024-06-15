import '/flutter_flow/flutter_flow_util.dart';
import 'visualizacion_parametros_widget.dart'
    show VisualizacionParametrosWidget;
import 'package:flutter/material.dart';

class VisualizacionParametrosModel
    extends FlutterFlowModel<VisualizacionParametrosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
