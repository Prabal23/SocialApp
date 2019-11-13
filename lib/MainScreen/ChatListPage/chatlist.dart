import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/MainScreen/ConversationPage/chat_page.dart';

import '../../main.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => new _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  int _current = 0;
  int _isBack = 0;
  String result = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: header,
        title: Center(
          child: Container(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Chat List",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: new Container(
            padding: EdgeInsets.all(0.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage()),
                            );
                          },
                          child: Container(
                            child: ListTile(
                              title: Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 25.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        //margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "Sadek Hossain",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    child: Text(
                                                      "24/07/19",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 4),
                                              child: Text(
                                                "lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              padding: EdgeInsets.all(3.0),
                                              decoration: new BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
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
                              // trailing: Text(
                              //             "24/07/19",
                              //             style: TextStyle(
                              //                 fontSize: 11,
                              //                 color: Colors.black38),
                              //           ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage()),
                            );
                          },
                          child: Container(
                            child: ListTile(
                              title: Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 25.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        //margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "Pranto Protim Roy",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    child: Text(
                                                      "24/07/19",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 4),
                                              child: Text(
                                                "lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              padding: EdgeInsets.all(3.0),
                                              decoration: new BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Text(
                                                "15 hr",
                                                style: TextStyle(
                                                    color: Colors.black,
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
                              // trailing: Text(
                              //             "24/07/19",
                              //             style: TextStyle(
                              //                 fontSize: 11,
                              //                 color: Colors.black38),
                              //           ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage()),
                            );
                          },
                          child: Container(
                            child: ListTile(
                              title: Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 25.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        //margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "Bijoya Banik",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    child: Text(
                                                      "24/07/19",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 4),
                                              child: Text(
                                                "lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              padding: EdgeInsets.all(3.0),
                                              decoration: new BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
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
                              // trailing: Text(
                              //             "24/07/19",
                              //             style: TextStyle(
                              //                 fontSize: 11,
                              //                 color: Colors.black38),
                              //           ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage()),
                            );
                          },
                          child: Container(
                            child: ListTile(
                              title: Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 25.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        //margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "Humayun Rahi",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    child: Text(
                                                      "24/07/19",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 4),
                                              child: Text(
                                                "lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              padding: EdgeInsets.all(3.0),
                                              decoration: new BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
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
                              // trailing: Text(
                              //             "24/07/19",
                              //             style: TextStyle(
                              //                 fontSize: 11,
                              //                 color: Colors.black38),
                              //           ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage()),
                            );
                          },
                          child: Container(
                            child: ListTile(
                              title: Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 25.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        //margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "Hachibur Rahman",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    child: Text(
                                                      "24/07/19",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 4),
                                              child: Text(
                                                "lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              padding: EdgeInsets.all(3.0),
                                              decoration: new BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Text(
                                                "5 hr",
                                                style: TextStyle(
                                                    color: Colors.black,
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
                              // trailing: Text(
                              //             "24/07/19",
                              //             style: TextStyle(
                              //                 fontSize: 11,
                              //                 color: Colors.black38),
                              //           ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
