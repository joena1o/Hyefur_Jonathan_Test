import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:hyefur_jonathan/Utils/conn.dart';
import 'package:dio/dio.dart';

class Login {
  LoginUser(email, password) async {

    try {

      FormData formData = new FormData.fromMap({
        'username':email,
        'password':password,
        "server_key": server_key
      });

      var res = await Dio().post(conn, data:formData);

      print(res.data);

      if(res.statusCode == 200 || res.statusCode == "200")
        return true;
      else
        return false;

    } catch (e) {
      print(e.toString());
      return false;
    }
  }

}
