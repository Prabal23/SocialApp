import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/events_add.dart';
import './main.dart';
import 'chat_page.dart';
import 'group_add.dart';
import 'homepage.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => new _EventPageState();
}

class _EventPageState extends State<EventPage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                    Text("Events",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventAddPage()),
                  );
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(Icons.add)))
          ],
        ),
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: new AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              actions: <Widget>[],
              title: new TabBar(
                //isScrollable: true,
                labelColor: header,
                labelStyle: TextStyle(fontSize: 15),
                tabs: [new Tab(text: "Calendar"), new Tab(text: "Hosting")],
                indicatorColor: header,
                unselectedLabelColor: Colors.grey,
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                SafeArea(
                  child: new Container(
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                border: Border.all(
                                    width: 0.3, color: Colors.grey[400]),
                              ),
                              margin: EdgeInsets.only(top: 0, bottom: 0),
                              child: index == 0
                                  ? Container(
                                      //color: Colors.red,
                                      margin: EdgeInsets.only(
                                          left: 5, right: 0, top: 0),
                                      padding: EdgeInsets.only(right: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    child: Text(
                                                      "Today, Mon, Aug 26, 2019",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Colors.red[400],
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : index == 1
                                      ? GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) => ProfilePage()),
                                            // );
                                          },
                                          child: Container(
                                            //color: Colors.red,
                                            margin: EdgeInsets.only(
                                                left: 30, right: 0, top: 0),
                                            padding: EdgeInsets.only(right: 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.calendar_today,
                                                  color: Colors.black54,
                                                  size: 20,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                          child: Text(
                                                            "Nothing planned",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black87,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: <Widget>[
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 3,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                "Tap to find things to do",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .black38,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : index == 2
                                          ? Container(
                                              //color: Colors.red,
                                              margin: EdgeInsets.only(
                                                  left: 5, right: 0, top: 0),
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Text(
                                                              "Tomorrow, Tue, Aug 27, 2019",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .black54,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : GestureDetector(
                                              onTap: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //       builder: (context) => ProfilePage()),
                                                // );
                                              },
                                              child: Container(
                                                //color: Colors.red,
                                                margin: EdgeInsets.only(
                                                    left: 30, right: 0, top: 0),
                                                padding:
                                                    EdgeInsets.only(right: 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.cake,
                                                      color: Colors.black54,
                                                      size: 20,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            // Container(
                                                            //   child: Text(
                                                            //     "Birthday",
                                                            //     overflow:
                                                            //         TextOverflow
                                                            //             .ellipsis,
                                                            //     maxLines: 2,
                                                            //     style: TextStyle(
                                                            //         fontSize:
                                                            //             15,
                                                            //         color: Colors
                                                            //             .black87,
                                                            //         fontWeight:
                                                            //             FontWeight
                                                            //                 .normal),
                                                            //   ),
                                                            // ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              3,
                                                                          right:
                                                                              10),
                                                                  child: Text(
                                                                    "Jack Smith",
                                                                    maxLines: 1,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        color: Colors
                                                                            .black87,
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                    ),
                  ),
                ),
                SafeArea(
                  child: new Container(
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                border: Border.all(
                                    width: 0.3, color: Colors.grey[400]),
                              ),
                              margin: EdgeInsets.only(top: 0, bottom: 0),
                              child: index == 0
                                  ? Container(
                                      //color: Colors.red,
                                      margin: EdgeInsets.only(
                                          left: 5, right: 0, top: 0),
                                      padding: EdgeInsets.only(right: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    child: Text(
                                                      "Past events you hosted",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : index == 1
                                      ? GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) => ProfilePage()),
                                            // );
                                          },
                                          child: Container(
                                            //color: Colors.red,
                                            margin: EdgeInsets.only(
                                                left: 20, right: 0, top: 0),
                                            padding: EdgeInsets.only(right: 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 0.2,
                                                            color:
                                                                Colors.grey)),
                                                    //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                    padding:
                                                        EdgeInsets.all(1.0),
                                                    child: Image.asset(
                                                      "assets/job1.png",
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.cover,
                                                    )),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5, right: 5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                          child: Text(
                                                            "Flutter Developers Bangladesh",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 3,
                                                                  right: 10),
                                                          child: Text(
                                                            "Sun, Sep 10 - Sep 11, 2019, 6 PM",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black54,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 3,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                "1.8k went",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    color: Colors
                                                                        .black54,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : index == 2
                                          ? Container(
                                              //color: Colors.red,
                                              margin: EdgeInsets.only(
                                                  left: 5, right: 0, top: 0),
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Text(
                                                              "Upcoming Birthdays",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black54,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : GestureDetector(
                                              onTap: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //       builder: (context) => ProfilePage()),
                                                // );
                                              },
                                              child: Container(
                                                //color: Colors.red,
                                                margin: EdgeInsets.only(
                                                    left: 20, right: 0, top: 0),
                                                padding:
                                                    EdgeInsets.only(right: 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            right: 10),
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 0.2,
                                                                color: Colors
                                                                    .grey)),
                                                        //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                        padding:
                                                            EdgeInsets.all(1.0),
                                                        child: Image.asset(
                                                          "assets/user_1.jpg",
                                                          width: 40,
                                                          height: 40,
                                                          fit: BoxFit.cover,
                                                        )),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5, right: 5),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Container(
                                                              child: Text(
                                                                "Jack Smith",
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
                                                                            .normal),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 3,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                "Sun, Aug 30",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 1,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .black54,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //width: 80,
                                                      margin: EdgeInsets.only(
                                                          top: 0,
                                                          left: 10,
                                                          right: 15),
                                                      padding:
                                                          EdgeInsets.all(7),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5)),
                                                          border: Border.all(
                                                              width: 0.5,
                                                              color: header)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          // Icon(Icons.add,
                                                          //     color: Colors.white,
                                                          //     size: 17),
                                                          Text(
                                                            "Create Event",
                                                            style: TextStyle(
                                                                color: header,
                                                                fontSize: 12),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
