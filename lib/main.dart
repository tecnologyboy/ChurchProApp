import 'package:churchproapp/src/providers/user_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:churchproapp/src/pages/main_page.dart';
import 'package:churchproapp/src/providers/navigation_provider.dart';
import 'package:churchproapp/src/services/user_service.dart';
import 'package:churchproapp/src/themes/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => UserServicesProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: mainTheme,
          title: 'Material App',
          home: const MainPage()),
    );
  }
}
