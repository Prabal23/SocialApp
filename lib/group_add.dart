import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/profile.dart';
import 'package:toast/toast.dart';
import './main.dart';
import 'chat_page.dart';
import 'homepage.dart';

class GroupAddPage extends StatefulWidget {
  @override
  _GroupAddPageState createState() => new _GroupAddPageState();
}

class _GroupAddPageState extends State<GroupAddPage> {
  int _current = 0;
  int _isBack = 0;
  String result = '';
  bool _isChecked = false;
  List<String> user = [];
  var users;

  @override
  void initState() {
    print(user.length);
    super.initState();
  }

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
                    Text("Create Group",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 15),
                    child: Text("Next")))
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage('assets/cam.png'),
                                ),
                                decoration: new BoxDecoration(
                                  color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Group Name...",
                                  hintStyle: TextStyle(color: Colors.black45),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  //border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.search, color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Search friends by name",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(height: 2, child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Friends",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  Container(height: 2, child: Divider()),
                  user.length != 0
                      ? Container(
                          margin: EdgeInsets.only(left: 0, right: 0),
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 10),
                          height: 53,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) =>
                                new Container(
                              //color: Colors.white,
                              margin: EdgeInsets.only(
                                  left: 2.5, right: 2.5, top: 5),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.white,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    users.removeAt(index);
                                    user = users;
                                    //print(images.length);
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 0),
                                        //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                        padding: EdgeInsets.all(1.0),
                                        child: CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.transparent,
                                          backgroundImage:
                                              AssetImage('assets/prabal.jpg'),
                                        ),
                                        decoration: new BoxDecoration(
                                          color: Colors.white, // border color
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            itemCount: user.length,
                          ),
                        )
                      : Container(),
                  Container(height: 2, child: Divider()),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Stack(
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
                                                    index % 2 == 0
                                                        ? Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0,
                                                                    top: 7),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.0),
                                                            decoration: new BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5))),
                                                            child: Text(
                                                              "Online",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                          )
                                                        : Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0,
                                                                    top: 7),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.0),
                                                            decoration: new BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            5))),
                                                            child: Text(
                                                              "15 hr",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 0, left: 5, right: 15),
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              width: 0.2, color: Colors.white)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "ADD",
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
                            setState(() {
                              user.add("value $index");
                              users = user.toList();
                            });
                            //Toast.show("index : $index", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
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
                                                      index % 2 == 0
                                                          ? Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 0,
                                                                      top: 7),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3.0),
                                                              decoration: new BoxDecoration(
                                                                  color: Colors
                                                                      .green,
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
                                                            )
                                                          : Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 0,
                                                                      top: 7),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3.0),
                                                              decoration: new BoxDecoration(
                                                                  color: Colors
                                                                          .grey[
                                                                      300],
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5))),
                                                              child: Text(
                                                                "15 hr",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
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
                                        padding: EdgeInsets.all(3),
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
                                            Container(
                                                margin:
                                                    EdgeInsets.only(left: 0),
                                                child:
                                                    Icon(Icons.add, size: 17)),
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
                  );
                },
                childCount: 5,
              ),
            )
          ],
        ));
  }
}
