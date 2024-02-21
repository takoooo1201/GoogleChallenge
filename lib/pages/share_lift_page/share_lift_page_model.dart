import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'share_lift_page_widget.dart' show ShareLiftPageWidget;
import 'package:flutter/material.dart';

class ShareLiftPageModel extends FlutterFlowModel<ShareLiftPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for shareDepart widget.
  FocusNode? shareDepartFocusNode;
  TextEditingController? shareDepartController;
  String? Function(BuildContext, String?)? shareDepartControllerValidator;
  // State field(s) for shareDes widget.
  FocusNode? shareDesFocusNode;
  TextEditingController? shareDesController;
  String? Function(BuildContext, String?)? shareDesControllerValidator;
  // State field(s) for shareDate widget.
  String? shareDateValue;
  FormFieldController<String>? shareDateValueController;
  // State field(s) for shareHour widget.
  int? shareHourValue;
  FormFieldController<int>? shareHourValueController;
  // State field(s) for ShareMin widget.
  int? shareMinValue;
  FormFieldController<int>? shareMinValueController;
  // State field(s) for maxPas widget.
  int? maxPasValue;
  FormFieldController<int>? maxPasValueController;
  // State field(s) for CheckboxMan widget.
  bool? checkboxManValue;
  // State field(s) for CheckboxWoman widget.
  bool? checkboxWomanValue;
  // State field(s) for CheckboxMid widget.
  bool? checkboxMidValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    shareDepartFocusNode?.dispose();
    shareDepartController?.dispose();

    shareDesFocusNode?.dispose();
    shareDesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
