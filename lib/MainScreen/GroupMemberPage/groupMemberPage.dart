import 'package:flutter/material.dart';
import 'package:social_app/Cards/AllMembersCard/allMembersCard.dart';

import '../../main.dart';

class GroupMemberPage extends StatefulWidget {
  @override
  _GroupMemberPageState createState() => _GroupMemberPageState();
}

class _GroupMemberPageState extends State<GroupMemberPage> {
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
                  Text("Group Members",
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
            ////// <<<<< All Friend Option >>>>> //////
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[

                  ////// <<<<< Friend Number >>>>> //////
                  Container(
                    margin: EdgeInsets.only(top: 12, left: 20, bottom: 7),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            child: Text(
                              "25",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            )),
                        Container(
                          margin: EdgeInsets.only(bottom: 3),
                            child: Text(
                              " members",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                  ),

                  ////// <<<<< Divider 5 >>>>> //////
                  Row(
                    children: <Widget>[
                      Container(
                        width: 30,
                        margin: EdgeInsets.only(top: 0, left: 20, bottom: 12),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black,
                                //offset: Offset(6.0, 7.0),
                              ),
                            ],
                            border:
                                Border.all(width: 0.5, color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            ////// <<<<< All Members Card >>>>> //////
            AllMembersCard(),
          ],
        ),
      ),
    );
  }
}
