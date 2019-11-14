import 'package:flutter/material.dart';
import 'package:social_app/Cards/AllFriendInviteCard/allFriendInviteCard.dart';

import '../../main.dart';

class InviteGroupMemberPage extends StatefulWidget {
  @override
  _InviteGroupMemberPageState createState() => _InviteGroupMemberPageState();
}

class _InviteGroupMemberPageState extends State<InviteGroupMemberPage> {
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
                  Text("Invite group member",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 0),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(Icons.search,
                                        color: Colors.black45, size: 20)),
                                Flexible(
                                  child: TextField(
                                    onChanged: (value) {
                                      //filterSearchResults(value);
                                    },
                                    //controller: src,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Search friend",
                                      hintStyle: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                      //labelStyle: TextStyle(color: Colors.white70),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 2.5, 20.0, 2.5),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "Suggested",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          )),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 30,
                            margin:
                                EdgeInsets.only(top: 10, left: 20, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.5, color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AllFriendInviteCard(),
          ],
        ),
      ),
    );
  }
}
