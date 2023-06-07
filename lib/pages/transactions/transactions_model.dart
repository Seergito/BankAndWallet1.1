import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/sin_registros/sin_registros_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionsModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? caja = false;

  double? total = 0.0;

  double? ingresos = 0.0;

  double? perdidas = 0.0;

  List<dynamic> json = [];
  void addToJson(dynamic item) => json.add(item);
  void removeFromJson(dynamic item) => json.remove(item);
  void removeAtIndexFromJson(int index) => json.removeAt(index);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
