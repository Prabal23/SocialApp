import 'package:flutter/material.dart';

import '../../main.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  int no;
  @override
  void initState() {
    setState(() {
      no = 2;
    });
    super.initState();
  }

  void _savedModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.collections_bookmark,
                      color: Colors.redAccent),
                  title: new Text('Unsave',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold)),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: sub_white,
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: header,
          title: Center(
            child: Container(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Saved",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => new Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 5, top: 5, left: 0, right: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(width: 0.2, color: Colors.grey),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 1.0,
                //     color: Colors.black.withOpacity(.5),
                //     //offset: Offset(6.0, 7.0),
                //   ),
                // ],
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => JobDetPage()),
                  // );
                },
                child: ListTile(
                  title: Container(
                    //width: 100,
                    padding: EdgeInsets.only(bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          //width: 100,
                          child: index % 2 == 0
                              ? Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        padding: const EdgeInsets.all(0.0),
                                        margin: EdgeInsets.only(top: 0),
                                        child: Image.asset(
                                          'assets/flutter.png',
                                          width: 100,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.black.withOpacity(0.5),
                                      padding: EdgeInsets.all(3),
                                      alignment: Alignment.center,
                                      child: Text("10:31",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11)),
                                    )
                                  ],
                                )
                              : Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(0.0),
                                    margin: EdgeInsets.only(top: 0),
                                    child: Image.asset(
                                      'assets/friends.jpeg',
                                      width: 100,
                                    ),
                                  ),
                                ),
                        ),
                        Container(
                          height: 80,
                          child: VerticalDivider(
                            //indent: 2.0,
                            color: Colors.grey[300],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 8, left: 0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: 8, top: 0, bottom: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              // Icon(
                                              //   Icons.attach_money,
                                              //   size: 13,
                                              //   color: header,
                                              // ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 0),
                                                child: Text(
                                                    index % 2 == 0
                                                        ? "Video"
                                                        : "Image",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey[600],
                                                    )),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 5,
                                                  right: 5,
                                                ),
                                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                padding: EdgeInsets.all(1.0),
                                                child: CircleAvatar(
                                                  radius: 0.2,
                                                  backgroundColor:
                                                      Colors.grey[500],
                                                  //backgroundImage: AssetImage('assets/user.png'),
                                                ),
                                                decoration: new BoxDecoration(
                                                  color: Colors.grey[
                                                      600], // border color
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Expanded(
                                                child: index % 2 == 0
                                                    ? Container(
                                                        margin: EdgeInsets.only(
                                                            right: 0),
                                                        child: Text(
                                                            "Jack Smith",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey[
                                                                        600])),
                                                      )
                                                    : Container(
                                                        margin: EdgeInsets.only(
                                                            right: 0),
                                                        child: Text(
                                                            "Steve Brown",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey[
                                                                        600])),
                                                      ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 0),
                                  child: Text(
                                    index % 2 == 0
                                        ? "How to install flutter"
                                        : "Hangout with friends",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        //color: Colors.red,
                                        margin: EdgeInsets.only(
                                            right: 0,
                                            top: 0,
                                            bottom: 0,
                                            left: 0),
                                        child: Row(
                                          children: <Widget>[
                                            // Icon(
                                            //   Icons.timer,
                                            //   size: 13,
                                            //   color: header,
                                            // ),
                                            Container(
                                              margin: EdgeInsets.only(left: 0),
                                              child: Text(
                                                  index % 2 == 0
                                                      ? "Aug 5, 2019,"
                                                      : "Today,",
                                                  style: TextStyle(
                                                      color: index % 2 == 0
                                                          ? Colors.grey[500]
                                                          : header,
                                                      fontSize: 11)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            // Icon(
                                            //   Icons.star,
                                            //   color: header,
                                            //   size: 12,
                                            // ),
                                            index % 2 == 0
                                                ? Container(
                                                    margin: EdgeInsets.only(
                                                        left: 2),
                                                    child: Text("5:00 PM",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[500],
                                                            fontSize: 11)))
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        left: 2),
                                                    child: Text("10 min ago",
                                                        style: TextStyle(
                                                            color: index % 2 ==
                                                                    0
                                                                ? Colors
                                                                    .grey[500]
                                                                : header,
                                                            fontSize: 11)))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _savedModalBottomSheet(context);
                          },
                          child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 18,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          itemCount: no,
        ));
  }
}
