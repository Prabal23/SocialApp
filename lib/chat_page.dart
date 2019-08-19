import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './main.dart';
import 'homepage.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => new _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _current = 0;
  int _isBack = 0;
  String result = '', msg = '';
  TextEditingController msgController = new TextEditingController();
  //ScrollController _scrollController = new ScrollController();
  List<String> messages = [];

  @override
  void initState() {
    // _scrollController.animateTo(
    //   0.0,
    //   curve: Curves.easeOut,
    //   duration: const Duration(milliseconds: 300),
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: header,
        title: Center(
          child: Container(
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                    padding: EdgeInsets.all(1.0),
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.grey, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("User Name",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 0),
                    padding: EdgeInsets.all(3.0),
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(width: 0.2, color: Colors.white70)),
                    child: Text(
                      "Online",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
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
            //color: chat_back,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        //controller: _scrollController,
                        itemCount: messages.length,
                        //reverse: true,
                        itemBuilder: (BuildContext context, int index) =>
                            index % 2 == 0
                                ? Container(
                                    child: ListTile(
                                      title: Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 0, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                //margin: EdgeInsets.only(top: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      margin: EdgeInsets.only(
                                                          top: 4, left: 70),
                                                      decoration:
                                                          new BoxDecoration(
                                                        //color: header,
                                                        color: my_chat,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                        border: Border.all(
                                                            width: 0.2,
                                                            color: Colors.grey),
                                                      ),
                                                      //color: Colors.white,
                                                      child: Text(
                                                        "${messages[index]}",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: <Widget>[
                                                          Text(
                                                            "24/07/19",
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 3),
                                                            child: messages
                                                                        .length ==
                                                                    index + 1
                                                                ? Container(
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.grey[400],
                                                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                                                  ),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(2),
                                                                    //color: Colors.grey[400],
                                                                    child: Icon(
                                                                      Icons
                                                                          .done,
                                                                      size: 10,
                                                                      color: Colors
                                                                          .white,
                                                                    ))
                                                                : Text(
                                                                    "Seen",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        color: Colors
                                                                            .grey),
                                                                  ),
                                                          )
                                                        ],
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
                                  )
                                : Container(
                                    child: ListTile(
                                      title: Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 0, top: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                              padding: EdgeInsets.all(1.0),
                                              child: CircleAvatar(
                                                radius: 12.0,
                                                backgroundColor:
                                                    Colors.transparent,
                                                backgroundImage: AssetImage(
                                                    'assets/user.png'),
                                              ),
                                              decoration: new BoxDecoration(
                                                color:
                                                    Colors.grey, // border color
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                //margin: EdgeInsets.only(top: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      margin: EdgeInsets.only(
                                                          top: 0, right: 70),
                                                      decoration:
                                                          new BoxDecoration(
                                                        color: person_chat,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                        border: Border.all(
                                                            width: 0.2,
                                                            color: person_chat),
                                                      ),
                                                      //color: Colors.white,
                                                      child: Text(
                                                        "${messages[index]}",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Text(
                                                            "24/07/19",
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
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
                                  )),
                  ),
                ),
                // Container(
                //   height: 2,
                //   child: Divider(
                //     color: Colors.grey,
                //   ),
                // ),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.attach_file,
                          color: Colors.black38,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          //height: 100,
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(
                              top: 5, left: 10, bottom: 5, right: 10),
                          decoration: BoxDecoration(
                              // borderRadius:
                              //     BorderRadius.all(Radius.circular(100.0)),
                              borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              color: Colors.grey[100],
                              border: Border.all(
                                  width: 0.2, color: Colors.grey[400])),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: new ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight: 120.0,
                                  ),
                                  child: new SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    reverse: true,
                                    child: new TextField(
                                      maxLines: null,
                                      autofocus: false,
                                      controller: msgController,
                                      decoration: InputDecoration(
                                        hintText: "Type a message here...",
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0, 10.0, 20.0, 10.0),
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          msg = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (msg != '') {
                            int dex = messages.length;
                            double idex = dex.toDouble();
                            print(idex);
                            setState(() {
                              //messages.insert(0, msg);
                              messages.add(msg);
                              //print("success");
                              msgController.text = '';
                              // _scrollController.animateTo(
                              //   idex,
                              //   curve: Curves.easeOut,
                              //   duration: const Duration(milliseconds: 300),
                              // );
                            });
                          } else {}
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                                color: header,
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 18,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
