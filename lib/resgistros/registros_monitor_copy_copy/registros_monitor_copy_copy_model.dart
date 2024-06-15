import '/flutter_flow/flutter_flow_util.dart';
import 'registros_monitor_copy_copy_widget.dart'
    show RegistrosMonitorCopyCopyWidget;
import 'package:flutter/material.dart';

class RegistrosMonitorCopyCopyModel
    extends FlutterFlowModel<RegistrosMonitorCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for SpO2 widget.
  FocusNode? spO2FocusNode;
  TextEditingController? spO2TextController;
  String? Function(BuildContext, String?)? spO2TextControllerValidator;
  // State field(s) for dia widget.
  FocusNode? diaFocusNode;
  TextEditingController? diaTextController;
  String? Function(BuildContext, String?)? diaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    spO2FocusNode?.dispose();
    spO2TextController?.dispose();

    diaFocusNode?.dispose();
    diaTextController?.dispose();
  }
}
