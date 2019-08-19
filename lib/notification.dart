import 'package:flutter/material.dart';

import 'main.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int no;
  @override
  void initState() {
    setState(() {
      no = 2;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sub_white,
      body: ListView.builder(
        itemCount: no,
        itemBuilder: (BuildContext context, int index) => Container(
              padding: EdgeInsets.only(top: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(width: 0.5, color: Colors.grey[400]),
              ),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 0, top: 0),
                              //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                              padding: EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage('assets/user.png'),
                              ),
                              decoration: new BoxDecoration(
                                color: Colors.grey, // border color
                                shape: BoxShape.circle,
                              ),
                            ),
                            index % 2 == 0
                                ? Container(
                                    margin: EdgeInsets.only(left: 33, top: 35),
                                    padding: EdgeInsets.all(3.0),
                                    decoration: new BoxDecoration(
                                      color: header, // border color
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.thumb_up,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(left: 33, top: 35),
                                    padding: EdgeInsets.all(3.0),
                                    decoration: new BoxDecoration(
                                      color: Colors.redAccent, // border color
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: index % 2 == 0
                                              ? "David Ryan"
                                              : "Jason Smith",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: index % 2 == 0
                                              ? " liked a photo that you're tagged in"
                                              : " reacted to your photo",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                          )),
                                      // can add more TextSpans here...
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    index % 2 == 0 ? "Just now" : "1 day ago",
                                    style: TextStyle(
                                        color: index % 2 == 0
                                            ? header
                                            : Colors.black54,
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 12, right: 0),
                            child: Icon(Icons.more_horiz))
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
