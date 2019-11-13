import 'package:flutter/material.dart';
import 'package:social_app/MainScreen/CommentPage/commentPage.dart';
import 'package:social_app/MainScreen/NavigationDrawerPage/ProfilePage/profile.dart';
import 'package:social_app/MainScreen/StatusAddEditPage/post_status_pic.dart';
import 'package:social_app/main.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int no, likeNum = 0;
  List likeArr = [0, 0];

  @override
  void initState() {
    setState(() {
      no = 2;
    });
    super.initState();
  }

  void _statusModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                // Text('React to this post',
                //       style: TextStyle(fontWeight: FontWeight.normal)),
                new ListTile(
                  leading: new Icon(Icons.edit),
                  title: new Text('Edit',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontFamily: "Oswald")),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostPage()))
                  },
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  title: new Text('Delete',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.redAccent,
                          fontFamily: "Oswald")),
                  onTap: () => {Navigator.pop(context), _showDeleteDialog()},
                ),
              ],
            ),
          );
        });
  }

  Future<Null> _showDeleteDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Want to delete the post?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 5, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 5, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sub_white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              //color: Colors.white,
              margin: EdgeInsets.only(top: 0),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(width: 0.5, color: Colors.grey[400]),
              ),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 0, left: 15),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 22.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/user_1.jpg'),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.grey, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 5.0,
                              backgroundColor: Colors.greenAccent,
                              //backgroundImage: AssetImage('assets/user.png'),
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.greenAccent, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PostPage()),
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            border:
                                Border.all(width: 0.5, color: Colors.grey[400]),
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: 10, right: 15, top: 10, bottom: 10),
                          child: Text("What do you want to say?",
                              style: TextStyle(
                                color: Colors.black54,
                              ))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.photo, color: Colors.black45),
                          Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Text("Photo",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12)))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(top: 20, bottom: 10),
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
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 0),
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
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            index % 2 == 0
                                                ? "John Smith"
                                                : "David Ryan",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _statusModalBottomSheet(context);
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                margin: EdgeInsets.only(left: 5),
                                child: Text("${likeArr[index]}",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12)),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              commentPage();
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                "50 Comments",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, bottom: 5, top: 5),
                        child: Divider(
                          color: Colors.grey[400],
                        )),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              setState(() {
                                likeNum++;
                                if (index == 0) {
                                  if (likeNum % 2 == 0) {
                                    likeArr.insert(0, 0);
                                  } else {
                                    likeArr.insert(0, 1);
                                  }
                                } else {
                                  if (likeNum % 2 == 0) {
                                    likeArr.insert(1, 0);
                                  } else {
                                    likeArr.insert(1, 1);
                                  }
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.thumb_up,
                                    color: likeArr[index] == 0
                                        ? Colors.black38
                                        : header,
                                    size: 16,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Like",
                                        style: TextStyle(
                                            color: likeArr[index] == 0
                                                ? Colors.black38
                                                : header,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              commentPage();
                            },
                            child: Container(
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
                              ),
                            ),
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
                      ),
                    )
                  ],
                ),
              );
            }, childCount: 2),
          ),
        ],
      ),
    );
  }

  void commentPage() {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new CommentPage();
        },
        fullscreenDialog: true));
  }
}
