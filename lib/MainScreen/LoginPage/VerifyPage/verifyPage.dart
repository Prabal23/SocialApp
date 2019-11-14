import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:social_app/Forms/LoginForm/VerifyPassForm/verifyPassForm.dart';
import 'dart:io';

import '../../../main.dart';
import '../loginPage.dart';

class VerifyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerifyPageState();
  }
}

class VerifyPageState extends State<VerifyPage> {
  int page = 0;
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
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 0),
                        child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            child: BackButton(color: Colors.grey)),
                      ),
                      VerifyPageForm()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
