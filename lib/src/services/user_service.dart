import "package:churchproapp/src/models/user_model.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class UserServices with ChangeNotifier {
  List<User> user = [];

  UserServices() {
    getUserAsync();
  }

  List<User> get getUser {
    return user;
  }

  getUserAsync() async {
    final url = 'http://10.0.2.2:8022/users';

    final resp = await http.get(Uri.parse(url));

    final response = userFromJson(resp.body);

    user.addAll(response.toList());

    print(user[0].fullName);

    notifyListeners();
  }
}
