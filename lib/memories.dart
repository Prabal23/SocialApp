import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/profile.dart';
import 'package:toast/toast.dart';
import './main.dart';
import 'chat_page.dart';
import 'homepage.dart';

class MemoryPage extends StatefulWidget {
  @override
  _MemoryPageState createState() => new _MemoryPageState();
}

class _MemoryPageState extends State<MemoryPage> {
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
                    Text("Memories",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          // actions: <Widget>[
          //   GestureDetector(
          //       onTap: () {},
          //       child: Container(
          //           alignment: Alignment.center,
          //           padding: EdgeInsets.all(10),
          //           margin: EdgeInsets.only(right: 15),
          //           child: Text("Next")))
          // ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Container(height: 2, child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("On this day",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 0, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("2 years ago",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ],
              ),
            ),
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
                childCount: 1,
              ),
            )
          ],
        ));
  }
}
