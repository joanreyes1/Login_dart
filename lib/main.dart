import 'package:app_login/pages/login_page.dart';
import 'package:app_login/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (setting) {
        // ignore: avoid_print
        print('ruta llamando: ${setting.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());
      },
    );
  }
}
