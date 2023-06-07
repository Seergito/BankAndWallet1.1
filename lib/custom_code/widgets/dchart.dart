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

class Dchart extends StatefulWidget {
  const Dchart({
    Key? key,
    this.width,
    this.height,
    this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic>? data;

  @override
  _DchartState createState() => _DchartState();
}

class _DchartState extends State<Dchart> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chartData = [];

    // Use a for loop to iterate through the data and build the chart data
    for (var item in widget.data!) {
      chartData.add({
        'domain': item['concepto'],
        'measure': item['amount'],
      });
    }

    return Container(
      child: DChartBar(
        data: [
          {
            'id': 'Bar',
            'data': chartData,
          },
        ],
        domainLabelPaddingToAxisLine: 16,
        axisLineTick: 2,
        axisLinePointTick: 2,
        axisLinePointWidth: 10,
        axisLineColor: Colors.blueGrey,
        measureLabelPaddingToAxisLine: 16,
        barColor: (barData, index, id) => Colors.lightBlue,
        xAxisTitle: "Transacciones por concepto",
        showBarValue: true,
      ),
    );
  }
}
