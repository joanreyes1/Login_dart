import 'package:flutter/material.dart';

import 'package:app_login/pages/login_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const LoginPage()
  };
}
