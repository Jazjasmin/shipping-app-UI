// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.status,
    this.data,
  });

  int? status;
  Data? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.userImage,
    this.appUser,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.mobile,
    this.privilage,
    this.branch,
    this.username,
    this.appToken,
    this.appVersion,
    this.token,
  });

  String? userImage;
  int? appUser;
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? mobile;
  Privilage? privilage;
  Branch? branch;
  String? username;
  String? appToken;
  String? appVersion;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userImage: json["user_image"],
        appUser: json["app_user"],
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        mobile: json["mobile"],
        privilage: Privilage.fromJson(json["privilage"]),
        branch: Branch.fromJson(json["branch"]),
        username: json["username"],
        appToken: json["app_token"],
        appVersion: json["app_version"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user_image": userImage,
        "app_user": appUser,
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "mobile": mobile,
        "privilage": privilage!.toJson(),
        "branch": branch!.toJson(),
        "username": username,
        "app_token": appToken,
        "app_version": appVersion,
        "token": token,
      };
}

class Branch {
  Branch({
    this.id,
    this.branchName,
    this.branchId,
  });

  String? id;
  String? branchName;
  String? branchId;

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["_id"],
        branchName: json["branch_name"],
        branchId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "branch_name": branchName,
        "id": branchId,
      };
}

class Privilage {
  Privilage({
    this.id,
    this.privilegeName,
    this.privilegeCode,
  });

  String? id;
  String? privilegeName;
  String? privilegeCode;

  factory Privilage.fromJson(Map<String, dynamic> json) => Privilage(
        id: json["_id"],
        privilegeName: json["privilege_name"],
        privilegeCode: json["privilege_code"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "privilege_name": privilegeName,
        "privilege_code": privilegeCode,
      };
}
