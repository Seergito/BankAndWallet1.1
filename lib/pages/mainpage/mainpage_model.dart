import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/sin_registros/sin_registros_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainpageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? idWal;

  bool? card = false;

  int? index = 0;

  dynamic cardJson;

  int? swipes;

  String? masterCondition = 'MasterCard';

  String? visaCondition = 'VISA';

  List<String> recentContactList = [];
  void addToRecentContactList(String item) => recentContactList.add(item);
  void removeFromRecentContactList(String item) =>
      recentContactList.remove(item);
  void removeAtIndexFromRecentContactList(int index) =>
      recentContactList.removeAt(index);

  bool timer = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getWallet)] action in mainpage widget.
  ApiCallResponse? apiResultq25;
  // Stores action output result for [Backend Call - API (getCard)] action in mainpage widget.
  ApiCallResponse? apiResult1nx;
  InstantTimer? instantTimer;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    instantTimer?.cancel();
  }

  /// Additional helper methods are added here.

}
