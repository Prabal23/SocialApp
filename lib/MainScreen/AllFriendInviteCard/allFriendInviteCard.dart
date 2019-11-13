import 'package:flutter/material.dart';
import 'dart:async';

import '../../main.dart';

class AllFriendInviteCard extends StatefulWidget {
  @override
  AllFriendInviteCardState createState() => AllFriendInviteCardState();
}

class AllFriendInviteCardState extends State<AllFriendInviteCard> {
  String result = '';
  bool loading = true;
  TextEditingController src = new TextEditingController();

  @override
  void initState() {
    print(user.length);
    friendname.addAll(name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverPadding(
        padding: EdgeInsets.only(bottom: 15, top: 5),
        sliver: SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(
                        top: 2.5, bottom: 2.5, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            margin:
                                EdgeInsets.only(left: 15, right: 20, top: 0),
                            padding: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                
                                ////// <<<<< Profile Picture >>>>> //////
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(1.0),
                                  child: CircleAvatar(
                                    radius: 15.0,
                                    backgroundColor: Colors.white,
                                    backgroundImage: index == 0
                                        ? AssetImage(
                                            'assets/user.png')
                                        : index == 1
                                            ? AssetImage(
                                                'assets/user_1.jpg')
                                            : index == 2
                                                ? AssetImage(
                                                    'assets/user.png')
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

                                ////// <<<<< User Name >>>>> //////
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        friendname[index],
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ////// <<<<< Message Button >>>>> //////
                          Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: header.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: header, width: 0.5)),
                              child: Text("Invite",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 12))),
                      ],
                    ),
                  );
          }, childCount: friendname.length),
        ),
      ),
    );
  }
}
