// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';
import 'package:d_chart/d_chart.dart';

class DchartMonth extends StatefulWidget {
  const DchartMonth({
    Key? key,
    this.width,
    this.height,
    this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic data;

  @override
  _DchartMonthState createState() => _DchartMonthState();
}

class _DchartMonthState extends State<DchartMonth> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> monthlyTotals = {};

    if (widget.data is List<dynamic>) {
      // Recorrer la lista de objetos JSON
      List<dynamic> dataList = widget.data as List<dynamic>;
      for (var data in dataList) {
        if (data is Map<String, dynamic>) {
          String createdAt = data['created_at'];
          double? amount = data['amount']?.toDouble();

          DateTime date = DateTime.parse(createdAt);
          String month = DateFormat('MMM').format(date);

          if (amount != null) {
            if (monthlyTotals.containsKey(month)) {
              monthlyTotals[month] = (monthlyTotals[month] ?? 0) + amount;
            } else {
              monthlyTotals[month] = amount;
            }
          }
        }
      }
    }

    List<Map<String, dynamic>> chartData = [];

    // Convertir los totales mensuales a formato de gráfica
    for (var entry in monthlyTotals.entries) {
      String month = entry.key;
      double amount = entry.value;

      chartData.add({
        'domain': month,
        'measure': amount,
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
        barColor: (barData, index, id) => Color.fromARGB(255, 95, 123, 234),
        showBarValue: true,
        xAxisTitle: "Transacciones por fecha",
      ),
    );
  }
}
