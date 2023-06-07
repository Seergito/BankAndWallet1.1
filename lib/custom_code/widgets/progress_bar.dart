// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Importaciones de paquetes y archivos necesarios
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({
    Key? key,
    this.width,
    this.height,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic> data;

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double _calculateProgress() {
    double total = 0;
    double progress = 0;

    for (final item in widget.data) {
      final amount = item['amount'] as int;
      final tipo = item['tipo'] as bool;
      final value = tipo ? -amount : amount;

      total += value;
    }

    if (total != 0) {
      final completedAmount = total < 0 ? total.abs() : total;
      progress = completedAmount / total.abs();
    }

    return progress;
  }

  @override
  Widget build(BuildContext context) {
    final progress = _calculateProgress();

    return Container(
      child: StepProgressIndicator(
        totalSteps: 15,
        currentStep: 12,
        size: 20,
        selectedColor: Colors.amber,
        unselectedColor: Colors.black,
        roundedEdges: Radius.circular(10),
        gradientColor: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightBlue, Colors.grey],
        ),
      ),
    );
  }
}
