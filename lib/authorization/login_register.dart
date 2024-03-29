import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../screens/register_page.dart';

class LoginOrRigester extends StatefulWidget {
  const LoginOrRigester({super.key});

  @override
  State<LoginOrRigester> createState() => _LoginOrRigesterState();
}

class _LoginOrRigesterState extends State<LoginOrRigester> {
  bool showLoginPage = true;

  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}
