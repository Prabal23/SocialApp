import 'package:flutter/material.dart';
import 'package:social_app/main.dart';
import 'package:social_app/post_status_pic.dart';
import 'package:social_app/profile.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int no;

  @override
  void initState() {
    setState(() {
      no = 2;
    });
    super.initState();
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
                          margin: EdgeInsets.only(left: 20, right: 20, top: 0),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          fontSize: 11, color: Colors.black54),
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
                                        color: Colors.black54, fontSize: 12)),
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
              );
            }, childCount: 2),
          ),
        ],
      ),
    );
  }
}
