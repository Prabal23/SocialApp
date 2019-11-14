import 'package:flutter/material.dart';
import 'package:social_app/Forms/LoginForm/loginForm.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  int count = 0, tnc = 0;
  String theme = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: back_new,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
