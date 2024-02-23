import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
