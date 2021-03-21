import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

import 'interceptors.dart';

class CustomDio extends DioForNative {

  CustomDio() {
    options.baseUrl = 'https://navio-escola-uff.herokuapp.com';
    interceptors.add(CustomIntercetors());
    options.connectTimeout = 5000;
  }
}
