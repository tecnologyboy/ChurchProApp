import 'package:churchproapp/src/pages/main_page.dart';
import 'package:churchproapp/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: mainTheme,
        title: 'Material App',
        home: const MainPage());
  }
}
