import 'package:churchproapp/src/providers/user_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final serviceProvider = Provider.of<UserServicesProvider>(context);

    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text('Page1Screen'),
        ),
      ),
    );
  }
}
