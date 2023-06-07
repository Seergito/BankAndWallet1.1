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

class DonutChart extends StatefulWidget {
  const DonutChart({
    Key? key,
    this.width,
    this.height,
    this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic data;

  @override
  _DonutChartState createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  Map<String, int> cardCount = {}; // Map to store the count of each card type

  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ]; // Define a list of colors

  @override
  void initState() {
    super.initState();
    countCardTypes();
  }

  void countCardTypes() {
    // Count the occurrences of each card type
    List<dynamic> jsonData = widget.data;
    for (var card in jsonData) {
      String cardType = card['service'];
      if (cardCount.containsKey(cardType)) {
        cardCount[cardType] = cardCount[cardType]! + 1;
      } else {
        cardCount[cardType] = 1;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DChartPie(
        data: cardCount.entries.map((entry) {
          return {
            'domain': entry.key,
            'measure': entry.value,
          };
        }).toList(),
        fillColor: (pieData, index) =>
            colors[index! % colors.length], // Assign colors based on index
        labelColor: Colors.white,
        donutWidth: 50,
        pieLabel: (pieData, index) => cardCount.entries
            .toList()[index!]
            .key, // Use the domain as the label
      ),
    );
  }
}
