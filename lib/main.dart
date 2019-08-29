import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:social_app/homepage.dart';
import 'package:social_app/splash.dart';

void main() => runApp(MyApp());

Color header = Color(0xFF01AFF4);
Color subheader = Colors.lightBlue;
Color sub_white = Color(0xFFf4f4f4);
Color golden = Color(0xFFCFB53B);
Color chat_back = Color(0xFFEAE7E2);
Color my_chat = Color(0xFF01AFF4);
Color person_chat = Color(0xFFE9EBED);
Color chat_page_back = Color(0xFFFFFFFF);
// Color my_chats = Color(0xFF01AFF4);
// Color person_chats = Color(0xFFFFFFFF);
String job_page = "1";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(header.withOpacity(1.0));
    return MaterialApp(
      title: 'Social App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //platform: TargetPlatform.android
          //primarySwatch: header
          ),
      home: SplashScreen(),
    );
  }
}
