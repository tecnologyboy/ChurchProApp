import 'package:churchproapp/src/models/user_model.dart';
import 'package:churchproapp/src/providers/user_services_provider.dart';
import 'package:churchproapp/src/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final serviceProvider = Provider.of<UserServices>(context);

    List<User> user = serviceProvider.getUser;

    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          //child: Text('Page 2 Screen'),
          child: Text(user.length > 0 ? user[0].fullName : ''),
        ),
      ),
    );
  }
}
