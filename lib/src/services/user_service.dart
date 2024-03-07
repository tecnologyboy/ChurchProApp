import "package:churchproapp/src/models/user_model.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class UserServices with ChangeNotifier {
  List<User> users = [];

  UserServices() {
    getUserAsync();
  }

  getUserAsync() async {
    final url = 'http://10.0.2.2:8022/users';

    final resp = await http.get(Uri.parse(url));

    final response = userFromJson(resp.body);

    users.addAll(response.toList());

    print(users[0].fullName);

    notifyListeners();
  }
}

// import "package:churchproapp/src/models/user_model.dart";
// import "package:http/http.dart" as http;

// class UserServices {
//   List<User> users = [];

//   UserServices() {
//     getUserAsync();
//   }

//   getUserAsync() async {
//     final url = 'http://10.0.2.2:8022/users';

//     final resp = await http.get(Uri.parse(url));

//     final response = userFromJson(resp.body);

//     users.addAll(response.toList());

//     print(users[0].fullName);
//   }
// }
