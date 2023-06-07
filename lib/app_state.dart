import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _emailState = false;
  bool get emailState => _emailState;
  set emailState(bool _value) {
    _emailState = _value;
  }

  bool _passwordState = false;
  bool get passwordState => _passwordState;
  set passwordState(bool _value) {
    _passwordState = _value;
  }

  bool _bizum = true;
  bool get bizum => _bizum;
  set bizum(bool _value) {
    _bizum = _value;
  }

  String _idWalletUsuario = '';
  String get idWalletUsuario => _idWalletUsuario;
  set idWalletUsuario(String _value) {
    _idWalletUsuario = _value;
  }

  String _PhoneNumber = '';
  String get PhoneNumber => _PhoneNumber;
  set PhoneNumber(String _value) {
    _PhoneNumber = _value;
  }

  List<String> _conceptList = [];
  List<String> get conceptList => _conceptList;
  set conceptList(List<String> _value) {
    _conceptList = _value;
  }

  void addToConceptList(String _value) {
    _conceptList.add(_value);
  }

  void removeFromConceptList(String _value) {
    _conceptList.remove(_value);
  }

  void removeAtIndexFromConceptList(int _index) {
    _conceptList.removeAt(_index);
  }

  void updateConceptListAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_conceptList[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
