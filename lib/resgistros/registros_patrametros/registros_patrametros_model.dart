import '/flutter_flow/flutter_flow_util.dart';
import 'registros_patrametros_widget.dart' show RegistrosPatrametrosWidget;
import 'package:flutter/material.dart';

class RegistrosPatrametrosModel
    extends FlutterFlowModel<RegistrosPatrametrosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SpO2 widget.
  FocusNode? spO2FocusNode;
  TextEditingController? spO2TextController;
  String? Function(BuildContext, String?)? spO2TextControllerValidator;
  // State field(s) for temp1 widget.
  FocusNode? temp1FocusNode;
  TextEditingController? temp1TextController;
  String? Function(BuildContext, String?)? temp1TextControllerValidator;
  // State field(s) for temp2 widget.
  FocusNode? temp2FocusNode;
  TextEditingController? temp2TextController;
  String? Function(BuildContext, String?)? temp2TextControllerValidator;
  // State field(s) for pD widget.
  FocusNode? pDFocusNode;
  TextEditingController? pDTextController;
  String? Function(BuildContext, String?)? pDTextControllerValidator;
  // State field(s) for pS widget.
  FocusNode? pSFocusNode;
  TextEditingController? pSTextController;
  String? Function(BuildContext, String?)? pSTextControllerValidator;
  // State field(s) for BPM widget.
  FocusNode? bpmFocusNode;
  TextEditingController? bpmTextController;
  String? Function(BuildContext, String?)? bpmTextControllerValidator;
  // State field(s) for resp widget.
  FocusNode? respFocusNode;
  TextEditingController? respTextController;
  String? Function(BuildContext, String?)? respTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    spO2FocusNode?.dispose();
    spO2TextController?.dispose();

    temp1FocusNode?.dispose();
    temp1TextController?.dispose();

    temp2FocusNode?.dispose();
    temp2TextController?.dispose();

    pDFocusNode?.dispose();
    pDTextController?.dispose();

    pSFocusNode?.dispose();
    pSTextController?.dispose();

    bpmFocusNode?.dispose();
    bpmTextController?.dispose();

    respFocusNode?.dispose();
    respTextController?.dispose();
  }
}
