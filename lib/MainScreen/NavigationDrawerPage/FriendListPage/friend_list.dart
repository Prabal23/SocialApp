import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/MainScreen/ConversationPage/chat_page.dart';
import 'package:social_app/MainScreen/NavigationDrawerPage/ProfilePage/profile.dart';

import '../../../main.dart';

class FriendListPage extends StatefulWidget {
  @override
  _FriendListPageState createState() => new _FriendListPageState();
}

class _FriendListPageState extends State<FriendListPage> {
  int length, no;
  @override
  void initState() {
    setState(() {
      length = 3;
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
                    Text("Friend List",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: new Scaffold(
          appBar: new AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Container(
              child: Text("145 friends",
                  style: TextStyle(color: Colors.black45, fontSize: 14)),
            ),
          ),
          body: ListView.builder(
              itemCount: no,
              itemBuilder: (BuildContext context, int index) => Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border:
                              Border.all(width: 0.5, color: Colors.grey[400]),
                        ),
                        margin: EdgeInsets.only(
                            top: 10, bottom: 0, left: 45, right: 15),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                //color: Colors.red,
                                margin: EdgeInsets.only(
                                    left: 15, right: 15, top: 0),
                                padding: EdgeInsets.only(right: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                              padding: EdgeInsets.all(1.0),
                                              child: CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor:
                                                    Colors.transparent,
                                                // backgroundImage: AssetImage(
                                                //     'assets/user.png'),
                                              ),
                                              decoration: new BoxDecoration(
                                                color: Colors
                                                    .white, // border color
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                index % 2 == 0
                                                                    ? "Andrew Martin"
                                                                    : "David Ryan",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 1,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ),
                                                          // Container(
                                                          //   margin: EdgeInsets.only(
                                                          //       left: 5),
                                                          //   //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                          //   padding:
                                                          //       EdgeInsets.all(2.0),
                                                          //   child: CircleAvatar(
                                                          //     radius: 2.0,
                                                          //     backgroundColor:
                                                          //         Colors.green,
                                                          //     //backgroundImage: AssetImage('assets/user.png'),
                                                          //   ),
                                                          //   decoration:
                                                          //       new BoxDecoration(
                                                          //     color: Colors
                                                          //         .green, // border color
                                                          //     shape:
                                                          //         BoxShape.circle,
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 3),
                                                      child: Text(
                                                        index % 2 == 0
                                                            ? "10 mutual friends"
                                                            : "5 mutual friends",
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 0, top: 7),
                                                      padding:
                                                          EdgeInsets.all(3.0),
                                                      decoration: new BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                      child: Text(
                                                        "Online",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChatPage()));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            top: 0, left: 5, right: 15),
                                        padding: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            border: Border.all(
                                                width: 0.2,
                                                color: Colors.white)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.message,
                                                color: Colors.white, size: 14),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "MESSAGE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
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
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.all(Radius.circular(0)),
                        //   border:
                        //       Border.all(width: 0.5, color: Colors.grey[400]),
                        // ),
                        margin: EdgeInsets.only(top: 10, bottom: 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //color: Colors.red,
                                  margin: EdgeInsets.only(
                                      left: 15, right: 15, top: 0),
                                  padding: EdgeInsets.only(right: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                padding: EdgeInsets.all(1.0),
                                                child: CircleAvatar(
                                                  radius: 30.0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: AssetImage(
                                                      'assets/user.png'),
                                                ),
                                                decoration: new BoxDecoration(
                                                  color: Colors
                                                      .grey, // border color
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            Expanded(
                                                              child: Container(
                                                                child: Text(
                                                                  index % 2 == 0
                                                                      ? "Andrew Martin"
                                                                      : "David Ryan",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ),
                                                            // Container(
                                                            //   margin: EdgeInsets.only(
                                                            //       left: 5),
                                                            //   //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                            //   padding:
                                                            //       EdgeInsets.all(2.0),
                                                            //   child: CircleAvatar(
                                                            //     radius: 2.0,
                                                            //     backgroundColor:
                                                            //         Colors.green,
                                                            //     //backgroundImage: AssetImage('assets/user.png'),
                                                            //   ),
                                                            //   decoration:
                                                            //       new BoxDecoration(
                                                            //     color: Colors
                                                            //         .green, // border color
                                                            //     shape:
                                                            //         BoxShape.circle,
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 3),
                                                        child: Text(
                                                          index % 2 == 0
                                                              ? "10 mutual friends"
                                                              : "5 mutual friends",
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 0, top: 7),
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        decoration: new BoxDecoration(
                                                            color: Colors.green,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5))),
                                                        child: Text(
                                                          "Online",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChatPage()),
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 0, left: 5, right: 15),
                                          padding: EdgeInsets.all(7),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  width: 0.2,
                                                  color: Colors.black)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.message,
                                                  color: Colors.black54,
                                                  size: 14),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 5),
                                                child: Text(
                                                  "MESSAGE",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 12),
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
                    ],
                  )),
        ));
  }
}
