import 'dart:convert';

import '/app/core/models/users/user_auth_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationUtils {
  static Future<UserAuthToken?> getUserAuthTokenFromSharedPreferences() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? userAuthTokenString = sharedPreferences.getString("userAuthToken");
    if (userAuthTokenString != null && userAuthTokenString.isNotEmpty) {
      UserAuthToken userAuthToken =
          UserAuthToken.fromJson(jsonDecode(userAuthTokenString));
      return Future.value(userAuthToken);
    }
    return Future.value(null);
  }
}
