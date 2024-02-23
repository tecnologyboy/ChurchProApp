import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  int id;
  String login;
  String password;
  String name;
  String lastName;
  bool enable;
  String fullName;

  User({
    required this.id,
    required this.login,
    required this.password,
    required this.name,
    required this.lastName,
    required this.enable,
    required this.fullName,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        login: json["login"],
        password: json["password"],
        name: json["name"],
        lastName: json["lastName"],
        enable: json["enable"],
        fullName: json["fullName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "login": login,
        "password": password,
        "name": name,
        "lastName": lastName,
        "enable": enable,
        "fullName": fullName,
      };
}
