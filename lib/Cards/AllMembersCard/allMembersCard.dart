import 'package:flutter/material.dart';
import 'package:social_app/MainScreen/ConversationPage/chat_page.dart';
import 'package:social_app/MainScreen/NavigationDrawerPage/ProfilePage/profile.dart';

import 'dart:async';

import '../../main.dart';

class AllMembersCard extends StatefulWidget {
  @override
  _AllMembersCardState createState() => _AllMembersCardState();
}

class _AllMembersCardState extends State<AllMembersCard> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverPadding(
        padding: EdgeInsets.only(bottom: 25),
        sliver: SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },

              ////// <<<<< Main Data >>>>> //////
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1.0, color: Colors.grey[300]),
                ),
                margin:
                    EdgeInsets.only(top: 2.5, bottom: 2.5, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 0),
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ////// <<<<< Profile picture >>>>> //////
                            Stack(
                              children: <Widget>[
                                ////// <<<<< Picture >>>>> //////
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(1.0),
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Colors.white,
                                    backgroundImage: index == 0
                                        ? AssetImage('assets/user.png')
                                        : index == 1
                                            ? AssetImage('assets/user_1.jpg')
                                            : index == 2
                                                ? AssetImage('assets/user.png')
                                                : index == 3
                                                    ? AssetImage(
                                                        'assets/user_1.jpg')
                                                    : AssetImage(
                                                        'assets/user.png'),
                                  ),
                                  decoration: new BoxDecoration(
                                    color: Colors.grey[300],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),

                            ////// <<<<< User Name >>>>> //////
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    index == 0
                                        ? "John Smith"
                                        : index == 1
                                            ? "David Ryan"
                                            : index == 2
                                                ? "Simon Wright"
                                                : index == 3
                                                    ? "Mike Johnson"
                                                    : "Daniel Smith",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),

                                  ////// <<<<< Mutual Friends >>>>> //////
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      index == 0
                                          ? "Admin"
                                          : index == 1
                                              ? "Moderator"
                                              : index == 2
                                                  ? "Member"
                                                  : index == 3
                                                      ? "Member"
                                                      : "Member",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ////// <<<<< Message Button >>>>> //////
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatPage()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              color: header.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: header, width: 0.5)),
                          child: Text("Message",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 12))),
                    ),
                  ],
                ),
              ),
            );
          }, childCount: 5),
        ),
      ),
    );
  }
}
