import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? subStr(String name) {
  String word = name;
  String firstCharacter = word.substring(0, 1);

  return firstCharacter.toUpperCase();
}

String? getWalletId(String? emailId) {
  if (emailId != null) {
    return "{email} = '$emailId'";
  }
  return "";
}

double? negativeConversor(double? num) {
  if (num == null) {
    return null;
  } else {
    return -num;
  }
}

String? timestampToString(DateTime? dateTime) {
  if (dateTime == null) {
    return null;
  }

  final formatter = DateFormat('dd/MM/yy HH:mm');
  final formattedString = formatter.format(dateTime);
  return formattedString;
}

String? cardDetails(String? iban) {
  if (iban == null || iban.length < 5) {
    return iban;
  }
  final maskedChars = '*****';
  final lastChars = iban.substring(iban.length - 5);
  return '$maskedChars$lastChars';
}

String? stringDateFormat(String? dateString) {
  if (dateString == null) {
    return null;
  }

  final dateTime = DateTime.parse(dateString);
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateTime);
}

double? calculateTotal(dynamic data) {
  double result = 0;
  for (var i = 0; i < data.length; i++) {
    if (data[i]["tipo"] == true) {
      result -= data[i]["amount"];
    } else {
      result += data[i]["amount"];
    }
  }
  return result;
}

double? calculateEarnings(dynamic data) {
  double result = 0;
  for (var i = 0; i < data.length; i++) {
    if (data[i]["tipo"] == false) {
      result += data[i]["amount"];
    }
  }
  return result;
}

List<double>? chartGetAmounts(dynamic data) {
  List<dynamic> jsonList = data
      as List<dynamic>; // Convertir "data" a una lista de objetos dinámicos
  List<double> amountList = [];

  for (var item in jsonList) {
    double amount = item["amount"];
    amountList.add(amount);
  }

  return amountList;
}

List<String>? chartGetWallets(dynamic data) {
  List<dynamic> jsonList = data
      as List<dynamic>; // Convertir "data" a una lista de objetos dinámicos
  List<String> walletList = [];

  for (var item in jsonList) {
    String wallet = item["walletId"];
    walletList.add(wallet);
  }

  return walletList;
}

double? calculateLosts(dynamic data) {
  double result = 0;
  for (var i = 0; i < data.length; i++) {
    if (data[i]["tipo"] == true) {
      result += data[i]["amount"];
    }
  }
  return result;
}
