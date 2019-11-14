import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:social_app/MainScreen/HomePage/homepage.dart';
import 'package:social_app/MainScreen/LoginPage/loginPage.dart';
import 'dart:async';

import '../../main.dart';

//import 'package:login_page/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    loadData();
    // controller =
    //     AnimationController(duration: const Duration(seconds: 0), vsync: this);
    // animation = Tween<double>(begin: 0, end: 250).animate(controller)
    //   ..addListener(() {
    //     setState(() {
    //       loadData();
    //       // The state that has changed here is the animation object’s value.
    //     });
    //   });
    // controller.forward();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              //backgroundImage: ExactAssetImage('assets/logo.png'),
              minRadius: 40,
              maxRadius: 40,
              //radius: 68.0,
              child: Image.asset('assets/social.png'),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: header,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    //height: animation.value,
                    //width: animation.value,
                    child: logo),
                    
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Text("Social", style: TextStyle(color: Colors.white, fontSize: 20)),
                //     Text(" App", style: TextStyle(color: Colors.white, fontSize: 20)),
                //   ],
                // ),
                // SizedBox(height: 15),
                // new CircularProgressIndicator(
                //   valueColor:
                //       AlwaysStoppedAnimation<Color>(Colors.white70),
                // ),
                // SizedBox(height: 20),
              ],
            ),
          ),
        ),

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/logo.png'),
        //     fit: BoxFit.cover
        //   ) ,
        // ),
        // child: Center(
        //   child: CircularProgressIndicator(
        //     valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
        //   ),
        // ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
}
