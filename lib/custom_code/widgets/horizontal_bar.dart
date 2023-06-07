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

class HorizontalBar extends StatefulWidget {
  const HorizontalBar({
    Key? key,
    this.width,
    this.height,
    this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic>? data;

  @override
  _HorizontalBarState createState() => _HorizontalBarState();
}

class _HorizontalBarState extends State<HorizontalBar> {
  List<Map<String, dynamic>> chartData = [];

  @override
  Widget build(BuildContext context) {
    chartData = widget.data?.map<Map<String, dynamic>>((item) {
          final amount = item['amount'];
          final iban = "***-" + item['iban'].substring(item['iban'].length - 5);

          return {
            'domain': iban,
            'measure': amount,
          };
        }).toList() ??
        [];

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
        verticalDirection: false,
        axisLineColor: Colors.green,
        measureLabelPaddingToAxisLine: 16,
        barColor: (barData, index, id) => Color.fromARGB(255, 113, 160, 223),
        showBarValue: true,
      ),
    );
  }
}
