// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:d_chart/d_chart.dart';
import 'dart:math' as math;

class ChartPie extends StatefulWidget {
  const ChartPie({
    Key? key,
    this.width,
    this.height,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic data;

  @override
  _ChartPieState createState() => _ChartPieState();
}

class _ChartPieState extends State<ChartPie> {
  List<Map<String, dynamic>> chartData = [];

  @override
  void initState() {
    super.initState();
    processData();
  }

  void processData() {
    List<Color> colors =
        generateColors(widget.data.length); // Generate colors dynamically

    for (var i = 0; i < widget.data.length; i++) {
      var item = widget.data[i];
      String amount = item['amount'].toString();
      String titular = item['titular'].toString();

      chartData.add({
        'domain': titular,
        'measure': double.parse(amount),
        'color': colors[i], // Assign corresponding color
      });
    }
  }

  List<Color> generateColors(int count) {
    List<Color> colors = [];

    for (var i = 0; i < count; i++) {
      // Generate random colors or use custom logic to generate colors
      // Here, a predefined function is used to generate random colors
      final color =
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt() | 0xFF000000);
      colors.add(color);
    }

    return colors;
  }

  @override
  Widget build(BuildContext context) {
    // Convert the JSON map to a list if it is not already a list
    final List<dynamic> dataList = widget.data is List<dynamic>
        ? widget.data
        : (widget.data as Map<String, dynamic>).values.toList();

    return Container(
      width: widget.width,
      height: widget.height,
      child: DChartPie(
        data: chartData,
        fillColor: (pieData, index) =>
            chartData[index!]['color'], // Use the corresponding color
        labelColor: Colors.black,
        labelPosition: PieLabelPosition.inside,
        pieLabel: (pieData, index) =>
            chartData[index!]['domain'], // Use the domain as the label
      ),
    );
  }
}
