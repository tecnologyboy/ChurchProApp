// import "package:churchproapp/src/models/user_model.dart";
// import "package:churchproapp/src/services/user_service.dart";
// import "package:flutter/material.dart";

// class UserServicesProvider with ChangeNotifier {
//   List<User> _users = [];

//   UserServices usrServ = UserServices();

//   UserServicesProvider() {
//     _users = usrServ.getUser;

//   }

//   List<User> getUser() {
//     print('Se asigno la lista de usuarios!!!!');

//     return _users;
//   }
// }

import "package:churchproapp/src/models/user_model.dart";
import "package:churchproapp/src/services/user_service.dart";
import "package:flutter/material.dart";

class UserServicesProvider with ChangeNotifier {
  List<User> users = [];

  UserServicesProvider() {
    getUsersAsync();
  }

  getUsersAsync() async {
    UserServices usrServ = UserServices();

    users = usrServ.users;

    notifyListeners();
  }
}
