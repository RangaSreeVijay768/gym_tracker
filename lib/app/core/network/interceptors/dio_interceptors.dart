import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import '/app/core/models/users/user_auth_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestaurantInterceptors extends InterceptorsWrapper {
  @override
  FutureOr<dynamic> onRequest(RequestOptions options,
      RequestInterceptorHandler requestInterceptorHandler) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userAuthTokenString = prefs.getString("userAuthToken");
    if (userAuthTokenString != null) {
      UserAuthToken userAuthToken =
          UserAuthToken.fromJson(jsonDecode(userAuthTokenString));
      options.headers
          .addAll({"Authorization": "Bearer ${userAuthToken.userAuthToken}"});
    }

    return requestInterceptorHandler.next(options);
  }
}
