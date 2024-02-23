import 'package:churchproapp/src/providers/user_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final serviceProvider = Provider.of<UserServicesProvider>(context);

    //todo: Investigar por que tengo que hacer doble instancia para que funcione el servicio que consulta los usuarios
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          //child: Text('Page 2 Screen'),
          child: Text(serviceProvider.users.isNotEmpty
              ? serviceProvider.users[0].fullName
              : ''),
        ),
      ),
    );
  }
}
