import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    margin: EdgeInsets.only(top: 0, right: 20),
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.done, color: header, size: 16,),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Post",
                            style: TextStyle(color: header, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Divider(color: Colors.grey[400]),
          SingleChildScrollView(
              child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 0, top: 15),
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
                Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "David Ryan",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ))),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10, right: 5, left: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.3, color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                size: 12,
                                color: Colors.black54,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Public",
                                    style: TextStyle(color: Colors.black54, fontSize: 12),
                                  )),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 25,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10, left: 5, right: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.3, color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                size: 12,
                                color: Colors.black54,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Album",
                                    style: TextStyle(color: Colors.black54, fontSize: 12),
                                  )),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 25,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //height: 150,
                  padding: EdgeInsets.all(0),
                  margin:
                      EdgeInsets.only(top: 25, left: 10, bottom: 5, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)),
                    color: Colors.white,
                    //border: Border.all(width: 0.2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: new ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 400.0,
                          ),
                          child: new SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: true,
                            child: new TextField(
                              maxLines: null,
                              autofocus: false,
                              //controller: msgController,
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: "What do you want to say?",
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  //msg = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
