// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

List<ProfileModel> profileModelFromJson(String str) => List<ProfileModel>.from(json.decode(str).map((x) => ProfileModel.fromJson(x)));

String profileModelToJson(List<ProfileModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfileModel {
    int id;
    DateTime createAt;
    String name;
    String email;
    String fullName;
    bool isActive;
    String password;

    ProfileModel({
        required this.id,
        required this.createAt,
        required this.name,
        required this.email,
        required this.fullName,
        required this.isActive,
        required this.password,
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        createAt: DateTime.parse(json["createAt"]),
        name: json["name"],
        email: json["email"],
        fullName: json["fullName"],
        isActive: json["isActive"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "createAt": createAt.toIso8601String(),
        "name": name,
        "email": email,
        "fullName": fullName,
        "isActive": isActive,
        "password": password,
    };
}
