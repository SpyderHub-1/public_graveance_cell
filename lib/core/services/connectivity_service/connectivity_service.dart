import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

/// [ConnectionChecker] to check for internet connection
class ConnectionChecker {
  /// [isConnected] will check if device is connected with internet or not.
  Future<bool> isConnected() async {
    var result = await (Connectivity().checkConnectivity());
    switch (result) {
      case ConnectivityResult.mobile:
        return true;
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.ethernet:
        return true;
      default:
        return false;
    }
  }
}
