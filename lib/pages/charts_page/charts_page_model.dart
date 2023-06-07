import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChartsPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> daysList = [];
  void addToDaysList(String item) => daysList.add(item);
  void removeFromDaysList(String item) => daysList.remove(item);
  void removeAtIndexFromDaysList(int index) => daysList.removeAt(index);

  List<String> montList = [];
  void addToMontList(String item) => montList.add(item);
  void removeFromMontList(String item) => montList.remove(item);
  void removeAtIndexFromMontList(int index) => montList.removeAt(index);

  List<String> daysBetweenSelection = [];
  void addToDaysBetweenSelection(String item) => daysBetweenSelection.add(item);
  void removeFromDaysBetweenSelection(String item) =>
      daysBetweenSelection.remove(item);
  void removeAtIndexFromDaysBetweenSelection(int index) =>
      daysBetweenSelection.removeAt(index);

  List<String> walletList = [];
  void addToWalletList(String item) => walletList.add(item);
  void removeFromWalletList(String item) => walletList.remove(item);
  void removeAtIndexFromWalletList(int index) => walletList.removeAt(index);

  List<double> amountList = [];
  void addToAmountList(double item) => amountList.add(item);
  void removeFromAmountList(double item) => amountList.remove(item);
  void removeAtIndexFromAmountList(int index) => amountList.removeAt(index);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getWallet)] action in chartsPage widget.
  ApiCallResponse? getWallet;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
