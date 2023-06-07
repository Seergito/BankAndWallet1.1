// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:nfc_manager/nfc_manager.dart';

class Nfcmanager extends StatefulWidget {
  const Nfcmanager({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NfcmanagerState createState() => _NfcmanagerState();
}

class _NfcmanagerState extends State<Nfcmanager> {
  Future<String> readNFC() async {
    String data = "";
    await NfcManager.instance.startSession(
      onDiscovered: (NfcTag tag) async {
        setState(() {
          data = tag.data[0];
        });
      },
    );
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: FutureBuilder<String>(
        future: readNFC(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Text('NFC Data: ${snapshot.data}');
          }
        },
      ),
    );
  }
}
