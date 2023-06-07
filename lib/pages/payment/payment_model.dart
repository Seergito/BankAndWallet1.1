import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/modal_insert/modal_insert_widget.dart';
import '/components/sin_registros/sin_registros_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? money = 0.0;

  double? total;

  bool? selected = false;

  String? walletIdTransaction;

  String? emailTransaction;

  double? amountReceive;

  String? contactName;

  String? contactPhone;

  List<String> conceptList = [];
  void addToConceptList(String item) => conceptList.add(item);
  void removeFromConceptList(String item) => conceptList.remove(item);
  void removeAtIndexFromConceptList(int index) => conceptList.removeAt(index);

  String? selectedConcept;

  ///  State fields for stateful widgets in this page.

  // State field(s) for moneyField widget.
  TextEditingController? moneyFieldController1;
  String? Function(BuildContext, String?)? moneyFieldController1Validator;
  // State field(s) for moneyField widget.
  TextEditingController? moneyFieldController2;
  String? Function(BuildContext, String?)? moneyFieldController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (getCard)] action in IconButton widget.
  ApiCallResponse? getContact;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (getWallet)] action in Container widget.
  ApiCallResponse? apiResultrw3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    moneyFieldController1?.dispose();
    moneyFieldController2?.dispose();
    textController3?.dispose();
  }

  /// Additional helper methods are added here.

}
