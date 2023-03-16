// ignore_for_file: unused_import

import 'dart:convert';

import 'package:alfarha_cargo_app/login/model/model.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class APIService {
  static var client = http.Client();
  static Map<String, String> requestHeaders = {
    'Content-Type': 'application/json',
  };
  static Future<LoginModel> apiLogin(uname, pwd, token, version) async {
    try {
      var uri = "https://crmapi.alfarhaonline.com/staff_app/login";
      var url = Uri.parse(uri);
      var response = await client.post(url,
          //  headers: requestHeaders,
          body: {
            "userName": uname,
            "password": pwd,
            "app_token": token,
            "app_version": version
          });
      print(response.body);

      if (response.statusCode == 200) {
        return loginModelFromJson(response.body);

        //  return "success";
      } else {
        Get.snackbar(
          "Oops",
          "Network error!",
          icon: Icon(Icons.error, color: primaryColor),
          snackPosition: SnackPosition.BOTTOM,
        );
        return Future.error('error');
      }
    } catch (e) {
      Get.snackbar(
        "Oops",
        "Enter valid username and password",
        icon: Icon(Icons.error, color: primaryColor),
        snackPosition: SnackPosition.BOTTOM,
      );
      return Future.error('error');
      // return res;
    }
  }
}
