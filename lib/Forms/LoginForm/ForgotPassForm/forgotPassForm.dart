import 'package:flutter/material.dart';
import 'package:social_app/MainScreen/LoginPage/VerifyPage/verifyPage.dart';

import '../../../main.dart';

class ForgotPassForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPassFormState();
  }
}

class ForgotPassFormState extends State<ForgotPassForm> {
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
                  "Forget Password?",
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
                margin: EdgeInsets.only(top: 12, left: 20),
                child: Text(
                  "Enter your email address or phone number to reset your password",
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
                          hintText: "Email",
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
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "or",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
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
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              //controller: phoneController,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Oswald',
                              ),
                              decoration: InputDecoration(
                                hintText: "Phone number",
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                                //labelStyle: TextStyle(color: Colors.white70),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyPage()),
                      );
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
                          "Send",
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
}
