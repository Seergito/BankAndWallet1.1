import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cardNumber widget.
  TextEditingController? cardNumberController;
  String? Function(BuildContext, String?)? cardNumberControllerValidator;
  String? _cardNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 20) {
      return 'Introduce una tarjeta correcta';
    }
    if (val.length > 20) {
      return 'Introduce una tarjeta correcta';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Introduce solamente dígitos';
    }
    return null;
  }

  // State field(s) for nombreTitular widget.
  TextEditingController? nombreTitularController;
  String? Function(BuildContext, String?)? nombreTitularControllerValidator;
  String? _nombreTitularControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 5) {
      return 'Introduce tu nombre completo';
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return 'Introduce un nombre válido';
    }
    return null;
  }

  // State field(s) for MM widget.
  TextEditingController? mmController1;
  String? Function(BuildContext, String?)? mmController1Validator;
  String? _mmController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 1) {
      return 'Introduce una fecha válida';
    }
    if (val.length > 2) {
      return 'Introduce una fecha válida';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Indica una fecha válida';
    }
    return null;
  }

  // State field(s) for AA widget.
  TextEditingController? aaController;
  String? Function(BuildContext, String?)? aaControllerValidator;
  String? _aaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 1) {
      return 'Introduce una fecha válida';
    }
    if (val.length > 2) {
      return 'Introduce una fecha válida';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Introduce una fecha válida';
    }
    return null;
  }

  // State field(s) for MM widget.
  TextEditingController? mmController2;
  String? Function(BuildContext, String?)? mmController2Validator;
  String? _mmController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 3) {
      return 'Introduce un CVC válido';
    }
    if (val.length > 3) {
      return 'Introduce un CVC válido';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Introduce un CVC válido';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (createWallet)] action in Button widget.
  ApiCallResponse? creacionWalletAuthUser;
  // Stores action output result for [Backend Call - API (SignUp)] action in Button widget.
  ApiCallResponse? apiRegistro;
  // Stores action output result for [Backend Call - API (createWallet)] action in Button widget.
  ApiCallResponse? creacionWallet;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cardNumberControllerValidator = _cardNumberControllerValidator;
    nombreTitularControllerValidator = _nombreTitularControllerValidator;
    mmController1Validator = _mmController1Validator;
    aaControllerValidator = _aaControllerValidator;
    mmController2Validator = _mmController2Validator;
  }

  void dispose() {
    cardNumberController?.dispose();
    nombreTitularController?.dispose();
    mmController1?.dispose();
    aaController?.dispose();
    mmController2?.dispose();
  }

  /// Additional helper methods are added here.

}
