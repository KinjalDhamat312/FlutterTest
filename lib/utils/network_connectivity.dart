import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_string.dart';

final Connectivity _connectivity = Connectivity();
String? _connectionStatus;

Future<bool> checkNetworkConnection() async {
  String connectionStatus;

  try {
    connectionStatus = (await _connectivity.checkConnectivity()).toString();
  } on PlatformException catch (_) {
    connectionStatus = AppStrings.alertNoNetWork;
  }

  _connectionStatus = connectionStatus;
  print("InitConnectivity : $_connectionStatus");
  if (_connectionStatus == "ConnectivityResult.mobile" ||
      _connectionStatus == "ConnectivityResult.wifi") {
    return true;
  } else {
    return false;
  }
}
