import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/profile.dart';
import './main.dart';
import 'chat_page.dart';
import 'homepage.dart';

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
        body: new DefaultTabController(
            length: length,
            child: new Scaffold(
              appBar: new AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                actions: <Widget>[],
                title: new TabBar(
                  //isScrollable: true,
                  labelColor: header,
                  labelStyle: TextStyle(fontSize: 15),
                  tabs: [
                    new Tab(text: "Suggestions"),
                    new Tab(text: "Requests"),
                    new Tab(text: "All")
                  ],
                  indicatorColor: header,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  ListView.builder(
                      itemCount: no,
                      itemBuilder: (BuildContext context, int index) => Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 5, right: 5),
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 0, left: 45, right: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey[400]),
                                ),
                                child: Container(
                                  //color: Colors.red,
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 0),
                                  padding: EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                index % 2 == 0
                                                    ? "Andrew Martin"
                                                    : "David Ryan",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 3),
                                                child: Text(
                                                  index % 2 == 0
                                                      ? "10 mutual friends"
                                                      : "5 mutual friends",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 15),
                                                child: Row(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 10),
                                                        padding:
                                                            EdgeInsets.all(7),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5))),
                                                        child: Row(
                                                          children: <Widget>[
                                                            // Icon(Icons.add,
                                                            //     color: Colors.white,
                                                            //     size: 17),
                                                            Text(
                                                              "ADD FRIEND",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        //width: 80,
                                                        margin: EdgeInsets.only(
                                                            top: 10, left: 10),
                                                        padding:
                                                            EdgeInsets.all(7),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5)),
                                                            border: Border.all(
                                                                width: 0.2,
                                                                color: Colors
                                                                    .white)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            // Icon(Icons.add,
                                                            //     color: Colors.white,
                                                            //     size: 17),
                                                            Text(
                                                              "REMOVE",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 0, right: 5),
                                // decoration: BoxDecoration(
                                // color: Colors.white,
                                //   borderRadius:
                                //       BorderRadius.all(Radius.circular(0)),
                                //   border: Border.all(
                                //       width: 0.5, color: Colors.grey[400]),
                                // ),
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 0, left: 0, right: 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()),
                                    );
                                  },
                                  child: Container(
                                    //color: Colors.red,
                                    margin: EdgeInsets.only(
                                        left: 15, right: 0, top: 0),
                                    padding: EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        // Container(
                                        //     margin: EdgeInsets.only(right: 10),
                                        //     decoration: BoxDecoration(
                                        //         border: Border.all(
                                        //             width: 0.2,
                                        //             color: Colors.grey)),
                                        //     //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                        //     padding: EdgeInsets.all(1.0),
                                        //     child: Image.asset(
                                        //       index % 2 == 0
                                        //           ? "assets/prabal.jpg"
                                        //           : "assets/user.png",
                                        //       width: 90,
                                        //       height: 90,
                                        //       fit: BoxFit.cover,
                                        //     )),
                                        Container(
                                          margin: EdgeInsets.only(right: 15),
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 30.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage('assets/user.png'),
                                          ),
                                          decoration: new BoxDecoration(
                                            color: Colors.grey, // border color
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  index % 2 == 0
                                                      ? "Andrew Martin"
                                                      : "David Ryan",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    index % 2 == 0
                                                        ? "10 mutual friends"
                                                        : "5 mutual friends",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black54),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Container(
                                                          //width: 80,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 10),
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          decoration: BoxDecoration(
                                                              color: header,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          5))),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              // Icon(Icons.add,
                                                              //     color: Colors.white,
                                                              //     size: 17),
                                                              Text(
                                                                "ADD FRIEND",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          //width: 80,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 10,
                                                                  left: 10),
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              border: Border.all(
                                                                  width: 0.2,
                                                                  color: Colors
                                                                      .black)),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              // Icon(Icons.add,
                                                              //     color: Colors.white,
                                                              //     size: 17),
                                                              Text(
                                                                "REMOVE",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                  ListView.builder(
                      itemCount: no,
                      itemBuilder: (BuildContext context, int index) => Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 5, right: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey[400]),
                                ),
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 0, left: 45, right: 15),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        //color: Colors.red,
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20, top: 0),
                                        padding: EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      index % 2 == 0
                                                          ? "David Ryan"
                                                          : "Andrew Martin",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 3),
                                                      child: index % 2 == 0
                                                          ? Text(
                                                              "5 mutual friends",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          : Container(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    "10 mutual friends",
                                                                    maxLines: 1,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets.only(
                                                                        left: 5,
                                                                        right:
                                                                            5),
                                                                    //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            1.0),
                                                                    child:
                                                                        CircleAvatar(
                                                                      radius:
                                                                          2.0,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      //backgroundImage: AssetImage('assets/user.png'),
                                                                    ),
                                                                    decoration:
                                                                        new BoxDecoration(
                                                                      color: Colors
                                                                          .white, // border color
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "5 min ago",
                                                                    maxLines: 1,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              //width: 80,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 10),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(7),
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  // Icon(Icons.add,
                                                                  //     color: Colors.white,
                                                                  //     size: 17),
                                                                  Text(
                                                                    "CONFIRM",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              //width: 80,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 10,
                                                                      left: 10),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(7),
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5)),
                                                                  border: Border.all(
                                                                      width:
                                                                          0.2,
                                                                      color: Colors
                                                                          .white)),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  // Icon(Icons.add,
                                                                  //     color: Colors.white,
                                                                  //     size: 17),
                                                                  Text(
                                                                    "DELETE",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
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
                                              left: 15, right: 0, top: 0),
                                          padding: EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 15),
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
                                                      Text(
                                                        index % 2 == 0
                                                            ? "David Ryan"
                                                            : "Andrew Martin",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 3),
                                                        child: index % 2 == 0
                                                            ? Text(
                                                                "5 mutual friends",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .black54),
                                                              )
                                                            : Container(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "10 mutual friends",
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.black54),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              5,
                                                                          right:
                                                                              5),
                                                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              1.0),
                                                                      child:
                                                                          CircleAvatar(
                                                                        radius:
                                                                            2.0,
                                                                        backgroundColor:
                                                                            Colors.grey[400],
                                                                        //backgroundImage: AssetImage('assets/user.png'),
                                                                      ),
                                                                      decoration:
                                                                          new BoxDecoration(
                                                                        color: Colors
                                                                            .grey[400], // border color
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      "5 min ago",
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              header),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 15),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              child: Container(
                                                                //width: 80,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            10),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(7),
                                                                decoration: BoxDecoration(
                                                                    color:
                                                                        header,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(5))),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    // Icon(Icons.add,
                                                                    //     color: Colors.white,
                                                                    //     size: 17),
                                                                    Text(
                                                                      "CONFIRM",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                //width: 80,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 10,
                                                                        left:
                                                                            10),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(7),
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            5)),
                                                                    border: Border.all(
                                                                        width:
                                                                            0.2,
                                                                        color: Colors
                                                                            .black)),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    // Icon(Icons.add,
                                                                    //     color: Colors.white,
                                                                    //     size: 17),
                                                                    Text(
                                                                      "DELETE",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
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
                  ListView.builder(
                      itemCount: no,
                      itemBuilder: (BuildContext context, int index) => Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey[400]),
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
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                      padding:
                                                          EdgeInsets.all(1.0),
                                                      child: CircleAvatar(
                                                        radius: 30.0,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        // backgroundImage: AssetImage(
                                                        //     'assets/user.png'),
                                                      ),
                                                      decoration:
                                                          new BoxDecoration(
                                                        color: Colors
                                                            .white, // border color
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
                                                                children: <
                                                                    Widget>[
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Text(
                                                                        index % 2 ==
                                                                                0
                                                                            ? "Andrew Martin"
                                                                            : "David Ryan",
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        maxLines:
                                                                            1,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight: FontWeight.bold),
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
                                                              margin: EdgeInsets
                                                                  .only(top: 3),
                                                              child: Text(
                                                                index % 2 == 0
                                                                    ? "10 mutual friends"
                                                                    : "5 mutual friends",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 0,
                                                                      top: 7),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3.0),
                                                              decoration: new BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5))),
                                                              child: Text(
                                                                "Online",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        10),
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
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 0, left: 5, right: 15),
                                              padding: EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  border: Border.all(
                                                      width: 0.2,
                                                      color: Colors.white)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(Icons.message,
                                                      color: Colors.white,
                                                      size: 14),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      "MESSAGE",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                ],
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
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                        padding:
                                                            EdgeInsets.all(1.0),
                                                        child: CircleAvatar(
                                                          radius: 30.0,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'assets/user.png'),
                                                        ),
                                                        decoration:
                                                            new BoxDecoration(
                                                          color: Colors
                                                              .grey, // border color
                                                          shape:
                                                              BoxShape.circle,
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
                                                                  children: <
                                                                      Widget>[
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        child:
                                                                            Text(
                                                                          index % 2 == 0
                                                                              ? "Andrew Martin"
                                                                              : "David Ryan",
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          maxLines:
                                                                              1,
                                                                          style: TextStyle(
                                                                              fontSize: 15,
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.bold),
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
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 3),
                                                                child: Text(
                                                                  index % 2 == 0
                                                                      ? "10 mutual friends"
                                                                      : "5 mutual friends",
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .black54),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 0,
                                                                        top: 7),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            3.0),
                                                                decoration: new BoxDecoration(
                                                                    color: Colors
                                                                        .green,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(5))),
                                                                child: Text(
                                                                  "Online",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10),
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
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 0, left: 5, right: 15),
                                                padding: EdgeInsets.all(7),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                                                      margin: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        "MESSAGE",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
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
                ],
              ),
            )));
  }
}
