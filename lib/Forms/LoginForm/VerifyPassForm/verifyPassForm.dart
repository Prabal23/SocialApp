import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:social_app/MainScreen/LoginPage/loginPage.dart';
import 'dart:io';

import '../../../main.dart';

class VerifyPageForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerifyPageFormState();
  }
}

class VerifyPageFormState extends State<VerifyPageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Verify Password Change",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.normal),
                )),
            Row(
              children: <Widget>[
                Container(
                  width: 30,
                  margin: EdgeInsets.only(top: 10, left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Colors.black,
                          //offset: Offset(6.0, 7.0),
                        ),
                      ],
                      border: Border.all(width: 0.5, color: Colors.black)),
                ),
              ],
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "We have sent you a sms with a verification code to the number +880 1689 588 341",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w300),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        //controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Verification Code",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _showDoneDialog();
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: header,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'BebasNeue',
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> _showDoneDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: header, width: 1.5),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          Icons.done,
                          color: header,
                          size: 50,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Password has been reset successfully",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
