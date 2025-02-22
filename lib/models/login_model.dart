import 'dart:async';
import 'dart:convert';

LoginResponseModel loginResponseFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  bool success;
  int statusCode;
  String code;
  String message;
  Data data;

  LoginResponseModel(
      {this.success, this.statusCode, this.code, this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statuCode'];
    code = json['code'];
    message = json['message'];
    data = json['data'].lenght > 0 ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['statusCode'] = this.statusCode;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String token;
  int id;
  String email;
  String nickname;
  String firstName;
  String lastName;
  String displayName;

  Data({
    this.token,
    this.id,
    this.email,
    this.nickname,
    this.firstName,
    this.lastName,
    this.displayName,
  });

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id = json['id'];
    email = json['email'];
    nickname = json['nickname'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['id'] = this.id;
    data['email'] = this.email;
    data['nickname'] = this.nickname;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['displayname'] = this.displayName;
  }
}
