import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: header,
          title: Center(
            child: Container(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Profile",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 15), child: Icon(Icons.search))
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: SingleChildScrollView(
              child: Container(
                  child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: header,
                          padding: const EdgeInsets.all(0.0),
                          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Image.asset(
                            'assets/cover.jpg',
                            //height: 100,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(right: 0, top: 95),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 80.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/user.png'),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.grey, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "David Ryan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "Simple guy with a big heart",
                        style: TextStyle(color: Colors.grey[600]),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 15, top: 15, right: 5),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.5, color: header),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.edit,
                                  color: header,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Edit",
                                    style:
                                        TextStyle(color: header, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5, top: 15),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 5, right: 15, top: 15),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.group,
                                  color: Colors.black45,
                                  size: 17,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Friends",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 15, top: 10, right: 5),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.photo,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Photos",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.event_available,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Events",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 5, right: 15, top: 10),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.black45,
                                  size: 17,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "More",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.work,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "Former Android Application Developer at",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                                TextSpan(
                                    text: " IT Lab Solutions Ltd",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.work,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Former student at",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                                TextSpan(
                                    text: " Computer Science and Engineering",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.book,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Studied at",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                                TextSpan(
                                    text: " Leading University, Sylhet",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.book,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Studied at",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                                TextSpan(
                                    text: " MC College, Sylhet",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.book,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Studied at",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                                TextSpan(
                                    text:
                                        " Sylhet Govt. Pilot High School, Sylhet",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_horiz,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "See Your About Info",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),

                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: header.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      margin: EdgeInsets.all(10),
                      child: Text("Edit Public Details",
                          style: TextStyle(
                              color: header,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text("Friends",
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 20)),
                  //           Text(
                  //             "All Friends",
                  //             style: TextStyle(color: header, fontSize: 17),
                  //           )
                  //         ],
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 3),
                  //         child: Text(
                  //           "250 Friends",
                  //           style: TextStyle(color: Colors.black54, fontSize: 15),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // // Container(
                  // //     alignment: Alignment.center,
                  // //     width: MediaQuery.of(context).size.width,
                  // //     padding: EdgeInsets.all(10),
                  // //     decoration: BoxDecoration(
                  // //         color: Colors.grey.withOpacity(0.2),
                  // //         borderRadius: BorderRadius.all(Radius.circular(5))),
                  // //     margin: EdgeInsets.all(10),
                  // //     child: Text("See All Friends",
                  // //         style: TextStyle(
                  // //             color: Colors.black,
                  // //             fontWeight: FontWeight.bold,
                  // //             fontSize: 16))),
                  // Container(
                  //     height: 2,
                  //     margin: EdgeInsets.only(top: 10, bottom: 20),
                  //     child: Divider(
                  //       color: Colors.grey[300],
                  //     )),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text("Photos",
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 20)),
                  //           Text(
                  //             "See Photos",
                  //             style: TextStyle(color: header, fontSize: 17),
                  //           )
                  //         ],
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 3),
                  //         child: Text(
                  //           "12 Albums",
                  //           style: TextStyle(color: Colors.black54, fontSize: 15),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //     height: 2,
                  //     margin: EdgeInsets.only(top: 10, bottom: 20),
                  //     child: Divider(
                  //       color: Colors.grey[300],
                  //     )),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text("Events",
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 20)),
                  //           Text(
                  //             "See Events",
                  //             style: TextStyle(color: header, fontSize: 17),
                  //           )
                  //         ],
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 3),
                  //         child: Text(
                  //           "3 Events This Week",
                  //           style: TextStyle(color: Colors.black54, fontSize: 15),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //     height: 2,
                  //     margin: EdgeInsets.only(top: 10, bottom: 20),
                  //     child: Divider(
                  //       color: Colors.grey[300],
                  //     )),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    color: sub_white,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 15, right: 15, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("Timeline",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 0, left: 15),
                                  //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                  padding: EdgeInsets.all(1.0),
                                  child: CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage('assets/user.png'),
                                  ),
                                  decoration: new BoxDecoration(
                                    color: Colors.grey, // border color
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(10),
                                    child: Text("What do you want to say?",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                              height: 2,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 15, right: 15),
                              child: Divider(
                                color: Colors.grey[300],
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 15, top: 0, bottom: 20, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.photo_camera,
                                      size: 23,
                                      color: Colors.black54,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.videocam,
                                        size: 23,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.photo,
                                        size: 23,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.person_add,
                                        size: 23,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 23,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.more_horiz,
                                        size: 23,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ]),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            )),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: sub_white,
                    child: Container(
                      padding: EdgeInsets.only(top: 20, bottom: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        border: Border.all(width: 0.5, color: Colors.grey[400]),
                      ),
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                //color: Colors.red,
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 0),
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                      padding: EdgeInsets.all(1.0),
                                      child: CircleAvatar(
                                        radius: 15.0,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                            AssetImage('assets/user.png'),
                                      ),
                                      decoration: new BoxDecoration(
                                        color: Colors.grey, // border color
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          index % 2 == 0
                                              ? "John Smith"
                                              : "David Ryan",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            index % 2 == 0
                                                ? "6 hr"
                                                : "Aug 7 at 5:34 PM",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 15),
                            child: index % 2 == 0
                                ? Text(
                                    "Hello everyone! this is my first status. i have made a social app with flutter. i hope you will like it. \nThank you",
                                    textAlign: TextAlign.justify,
                                  )
                                : Container(
                                    //color: Colors.red,
                                    padding: const EdgeInsets.all(0.0),
                                    margin: EdgeInsets.only(top: 0),
                                    child: Image.asset(
                                      'assets/fb.png',
                                      //height: 100,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(3.0),
                                      decoration: new BoxDecoration(
                                        color: header, // border color
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.thumb_up,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(3.0),
                                      decoration: new BoxDecoration(
                                        color: Colors.red, // border color
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      child: Text("200",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12)),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Text(
                                    "50 Comments",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 7, top: 5),
                              child: Divider(
                                color: Colors.grey[400],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.black38,
                                    size: 16,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Like",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              )),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.comment,
                                    color: Colors.black38,
                                    size: 16,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Comment",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              )),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.share,
                                    color: Colors.black38,
                                    size: 16,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Share",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: 2,
              ),
            )
          ],
        ));
  }
}
