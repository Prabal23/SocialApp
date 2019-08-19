import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import './main.dart';
import 'chat_page.dart';
import 'homepage.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => new _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
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
                  Text("Group",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Container(margin: EdgeInsets.only(right: 15), child: Icon(Icons.add))
        ],
      ),
      body: SafeArea(
        child: new Container(
          padding: EdgeInsets.all(0.0),
          color: Colors.white,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(width: 0.5, color: Colors.grey[400]),
                  ),
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ProfilePage()),
                      // );
                    },
                    child: Container(
                      //color: Colors.red,
                      margin: EdgeInsets.only(left: 20, right: 0, top: 0),
                      padding: EdgeInsets.only(right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.2, color: Colors.grey)),
                              //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                              padding: EdgeInsets.all(1.0),
                              child: Image.asset(
                                "assets/job1.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              )),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      index % 2 == 0 ? "Appifylab" : "Friends",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: index % 2 == 0
                                              ? FontWeight.bold
                                              : FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: index % 2 == 0
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 0, right: 5, top: 3),
                                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                padding: EdgeInsets.all(1.0),
                                                child: CircleAvatar(
                                                  radius: 1.0,
                                                  backgroundColor: header,
                                                  //backgroundImage: AssetImage('assets/user.png'),
                                                ),
                                                decoration: new BoxDecoration(
                                                  color: header, // border color
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 3),
                                                child: Text(
                                                  "1 new post",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: header,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        : Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Updated 5 days ago",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.normal),
                                            ),
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
                ),
          ),
        ),
      ),
    );
  }
}
