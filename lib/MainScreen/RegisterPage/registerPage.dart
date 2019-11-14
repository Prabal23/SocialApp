import 'package:flutter/material.dart';
import 'package:social_app/Forms/RegisterForm/registerForm.dart';

import '../../main.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  int count = 0, tnc = 0;
  String theme = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  //color: header,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 5),
                          child: BackButton(color: Colors.grey)),
                    ],
                  ),
                ),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
