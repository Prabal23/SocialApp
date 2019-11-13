import 'package:flutter/material.dart';
import 'package:social_app/MainScreen/GroupMemberPage/groupMemberPage.dart';
import 'package:social_app/MainScreen/InviteGroupMemberPage/inviteGroupMemberPage.dart';
import 'package:social_app/MainScreen/NavigationDrawerPage/ProfilePage/profile.dart';
import 'package:social_app/MainScreen/StatusAddEditPage/post_status_pic.dart';

import '../../main.dart';

class GroupDetailsPage extends StatefulWidget {
  @override
  _GroupDetailsPageState createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
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
                  Text("Group Details",
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
            child: Container(
              child: Column(
                children: <Widget>[
                  ////// <<<<< Cover Photo >>>>> //////
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 0, right: 0),
                    child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/cover.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0))),
                      child: null,
                    ),
                  ),

                  ////// <<<<< Group by >>>>> //////
                  Container(
                    padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                    alignment: Alignment.centerLeft,
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.grey[600]),
                    child: Text(
                      "Group by Bijoya Banik",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w300),
                    ),
                  ),

                  ////// <<<<< About Button >>>>> //////
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            // color: Colors.red
                            ),
                        child: Column(
                          children: <Widget>[
                            ////// <<<<< Group Title >>>>> //////
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "Flutter Rajjo",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                      child: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black,
                                    size: 27,
                                  ))
                                ],
                              ),
                            ),

                            ////// <<<<< Group Members >>>>> //////
                            Container(
                              child: Text(
                                "Secret Group - 25 Memeber",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        )),
                  ),
//////

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ////// <<<<< Group Members Photo Button >>>>> //////
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GroupMemberPage()));
                          },
                          child: Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 10),
                            alignment: Alignment.centerRight,
                            // color: Colors.blue,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: ClipOval(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey[300],
                                                width: 1),
                                            shape: BoxShape.circle),
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage("assets/user.png"),
                                        )),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: ClipOval(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey[300],
                                                  width: 1),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/user_1.jpg"),
                                          )),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: ClipOval(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey[300],
                                                  width: 1),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/user.png"),
                                          )),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 90,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: ClipOval(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey[300],
                                                  width: 1),
                                              shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/user_1.jpg"),
                                          )),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 120,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: ClipOval(
                                      child: Stack(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/user.png",
                                            height: 40,
                                            width: 40,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            child: ClipOval(
                                              child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  child: Icon(
                                                    Icons.more_horiz,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ////// <<<<< Invite Members Button >>>>> //////

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InviteGroupMemberPage()),
                            );
                          },
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 20, top: 10, bottom: 10),
                              //margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: header,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 17),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "Invite",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontFamily: 'BebasNeue',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),

                  ////// <<<<< Status/Photo post >>>>> //////
                  Container(
                    //color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
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
                                    backgroundImage:
                                        AssetImage('assets/user_1.jpg'),
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
                                MaterialPageRoute(
                                    builder: (context) => PostPage()),
                              );
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey[400]),
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
                              MaterialPageRoute(
                                  builder: (context) => PostPage()),
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
                                            color: Colors.black54,
                                            fontSize: 12)))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///////////// <<<<< END >>>>> ////////////

                  ////// <<<<< Divider 1 >>>>> //////
                  Container(
                      width: 50,
                      margin: EdgeInsets.only(
                          top: 5, left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: header,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1.0,
                              color: header,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border: Border.all(width: 0.5, color: header))),
                ],
              ),
            ),
          ),
          //Posts card
          //CreatePostCard()
        ],
      ),
    );
  }
}
