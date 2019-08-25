import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String post = '';

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
                  Text("Create Post",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(children: <Widget>[
                            // Icon(
                            //   Icons.photo_camera,
                            //   size: 23,
                            //   color: Colors.black54,
                            // ),
                            // Container(
                            //   margin: EdgeInsets.only(left: 10),
                            //   child: Icon(
                            //     Icons.videocam,
                            //     size: 23,
                            //     color: Colors.black54,
                            //   ),
                            // ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.photo,
                                size: 23,
                                color: Colors.green[300],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.person_add,
                                size: 23,
                                color: Colors.blue[300],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.location_on,
                                size: 23,
                                color: Colors.red[300],
                              ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(left: 10),
                            //   child: Icon(
                            //     Icons.more_horiz,
                            //     size: 23,
                            //     color: Colors.black54,
                            //   ),
                            // ),
                          ]),
                          Container(
                            margin: EdgeInsets.only(top: 0, right: 20),
                            padding: EdgeInsets.all(7),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.done,
                                  color: post == '' ? Colors.grey : header,
                                  size: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Post",
                                    style: TextStyle(
                                        color: post == '' ? Colors.grey : header,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Divider(color: Colors.grey[400]),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 0, top: 5),
                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                          padding: EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/user_1.jpg'),
                          ),
                          decoration: new BoxDecoration(
                            color: Colors.grey, // border color
                            shape: BoxShape.circle,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Container(
                                    margin: EdgeInsets.only(top: 0, left: 10),
                                    child: Text(
                                      "David Ryan",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ))),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0, right: 5, left: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.3, color: Colors.black54),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.settings,
                                            size: 12,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Public",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12),
                                            )),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0, left: 5, right: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.3, color: Colors.black54),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.add,
                                            size: 12,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Album",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12),
                                            )),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //height: 150,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                        top: 25, left: 10, bottom: 5, right: 10),
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
                              //reverse: true,
                              child: new TextField(
                                maxLines: null,
                                autofocus: false,
                                //controller: msgController,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  hintText: "What do you want to say?",
                                  contentPadding: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 20.0, 10.0),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    post = value;
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
            ),
          )
        ],
      ),
    );
  }
}
