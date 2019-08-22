import 'package:flutter/material.dart';
import 'package:social_app/main.dart';
import 'package:video_player/video_player.dart';

import 'job_det.dart';

class JobsDrawPage extends StatefulWidget {
  @override
  _JobsDrawPageState createState() => _JobsDrawPageState();
}

class _JobsDrawPageState extends State<JobsDrawPage> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
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
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: header,
          title: Center(
            child: Container(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("My Jobs",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => new Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 5, top: 5, left: 0, right: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(width: 0.2, color: Colors.grey),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 1.0,
                //     color: Colors.black.withOpacity(.5),
                //     //offset: Offset(6.0, 7.0),
                //   ),
                // ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobDetPage()),
                  );
                },
                child: ListTile(
                  title: Stack(
                    children: <Widget>[
                      Container(
                        //width: 100,
                        padding: EdgeInsets.only(bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Container(
                                //color: Colors.red,

                                padding: const EdgeInsets.all(0.0),
                                margin: EdgeInsets.only(top: 0),
                                child: Image.asset(
                                  index % 2 == 0
                                      ? 'assets/fb.png'
                                      : 'assets/youtube.png',
                                  width: 100,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              child: VerticalDivider(
                                //indent: 2.0,
                                color: Colors.grey[300],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        index % 2 == 0
                                            ? "Software Engineer (Android & IOS)"
                                            : "Software Engineer",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          //Icon(Icons.label_important, size: 15, color: header,),
                                          Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: Text(
                                                index % 2 == 0
                                                    ? "Facebook"
                                                    : "Youtube",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 8, left: 0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  right: 8, top: 0, bottom: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  // Icon(
                                                  //   Icons.attach_money,
                                                  //   size: 13,
                                                  //   color: header,
                                                  // ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 0),
                                                    child: Text(
                                                        index % 2 == 0
                                                            ? "Full Time"
                                                            : "Full Time",
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 5,
                                                      right: 5,
                                                    ),
                                                    //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                    padding:
                                                        EdgeInsets.all(1.0),
                                                    child: CircleAvatar(
                                                      radius: 0.2,
                                                      backgroundColor: header,
                                                      //backgroundImage: AssetImage('assets/user.png'),
                                                    ),
                                                    decoration:
                                                        new BoxDecoration(
                                                      color:
                                                          header, // border color
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  index % 2 == 0
                                                      ? Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 5),
                                                          child: Text(
                                                              "Negotiable",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color:
                                                                      header)),
                                                        )
                                                      : Row(
                                                          children: <Widget>[
                                                            Icon(
                                                              Icons
                                                                  .attach_money,
                                                              size: 13,
                                                              color: header,
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right: 5),
                                                              child: Text(
                                                                  "120 k/month",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color:
                                                                          header)),
                                                            ),
                                                          ],
                                                        )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            //color: Colors.red,
                                            margin: EdgeInsets.only(
                                                right: 8,
                                                top: 0,
                                                bottom: 0,
                                                left: 0),
                                            child: Row(
                                              children: <Widget>[
                                                // Icon(
                                                //   Icons.timer,
                                                //   size: 13,
                                                //   color: header,
                                                // ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 0),
                                                  child: Text("Last Date : ",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[500],
                                                          fontSize: 11)),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 0),
                                                  child: Text(
                                                      index % 2 == 0
                                                          ? "27/08/19"
                                                          : "Today",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[500],
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                // Icon(
                                                //   Icons.star,
                                                //   color: header,
                                                //   size: 12,
                                                // ),
                                                index % 2 == 0
                                                    ? Container(
                                                        margin: EdgeInsets.only(
                                                            left: 3),
                                                        child: Text("Just Now",
                                                            style: TextStyle(
                                                                color: header,
                                                                fontSize: 12)))
                                                    : Container(
                                                        margin: EdgeInsets.only(
                                                            left: 2),
                                                        child: Text("14 days",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black54,
                                                                fontSize: 12)))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          itemCount: no,
        ));
  }
}
