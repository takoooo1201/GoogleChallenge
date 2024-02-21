import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'have_lift_page_widget.dart' show HaveLiftPageWidget;
import 'package:flutter/material.dart';

class HaveLiftPageModel extends FlutterFlowModel<HaveLiftPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for haveDepart widget.
  FocusNode? haveDepartFocusNode;
  TextEditingController? haveDepartController;
  String? Function(BuildContext, String?)? haveDepartControllerValidator;
  // State field(s) for haveDes widget.
  FocusNode? haveDesFocusNode;
  TextEditingController? haveDesController;
  String? Function(BuildContext, String?)? haveDesControllerValidator;
  // State field(s) for startDate widget.
  String? startDateValue;
  FormFieldController<String>? startDateValueController;
  // State field(s) for startH widget.
  int? startHValue;
  FormFieldController<int>? startHValueController;
  // State field(s) for startM widget.
  int? startMValue;
  FormFieldController<int>? startMValueController;
  // State field(s) for endDate widget.
  String? endDateValue;
  FormFieldController<String>? endDateValueController;
  // State field(s) for endH widget.
  int? endHValue;
  FormFieldController<int>? endHValueController;
  // State field(s) for endM widget.
  int? endMValue;
  FormFieldController<int>? endMValueController;
  // State field(s) for CheckboxMan widget.
  bool? checkboxManValue;
  // State field(s) for CheckboxWoman widget.
  bool? checkboxWomanValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    haveDepartFocusNode?.dispose();
    haveDepartController?.dispose();

    haveDesFocusNode?.dispose();
    haveDesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
