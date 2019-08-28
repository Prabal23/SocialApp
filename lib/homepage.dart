import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_app/chatlist.dart';
import 'package:social_app/events.dart';
import 'package:social_app/friend_list.dart';
import 'package:social_app/friends.dart';
import 'package:social_app/frontpage.dart';
import 'package:social_app/memories.dart';
import 'package:social_app/notification.dart';
import 'package:social_app/post_status_pic.dart';
import 'package:social_app/profile.dart';
import 'package:social_app/jobs.dart';
import 'package:social_app/saved.dart';
import 'group.dart';
import 'jobs_drawer.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedPage = 0;
  final pageOptions = [
    FrontPage(),
    FriendsPage(),
    //PostPage(),
    NotificationPage(),
    JobsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: new Drawer(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Stack(
                  children: <Widget>[
                    Container(
                      color: header,
                      padding: const EdgeInsets.all(0.0),
                      margin: EdgeInsets.only(top: 0),
                      child: Image.asset(
                        'assets/cover.jpg',
                        //height: 100,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(right: 0, top: 95),
                        //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                        padding: EdgeInsets.all(1.0),
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/user_1.jpg'),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.grey, // border color
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "David Ryan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "Simple guy with a big heart",
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 0, top: 15),
                  padding: EdgeInsets.all(5.0),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5, color: header),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    "View Profile",
                    style: TextStyle(color: header, fontSize: 14),
                  ),
                ),
              ),
              Container(
                  height: 2,
                  margin: EdgeInsets.only(top: 20),
                  child: Divider(
                    color: Colors.grey[300],
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FriendListPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.group,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Friends",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: 0,
                              right: 5,
                            ),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 2.0,
                              backgroundColor: header,
                              //backgroundImage: AssetImage('assets/user.png'),
                            ),
                            decoration: new BoxDecoration(
                              color: header, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Text("23 requests",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: header,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GroupPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.group_work,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Groups",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: 0,
                              right: 5,
                            ),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 2.0,
                              backgroundColor: header,
                              //backgroundImage: AssetImage('assets/user.png'),
                            ),
                            decoration: new BoxDecoration(
                              color: header, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Text("1 new post",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: header,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.event_available,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Events",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MemoryPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Memories",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SavedPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.bookmark,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child:
                                  Text("Saved", style: TextStyle(fontSize: 14)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobsDrawPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.work,
                            color: Colors.black45,
                            size: 23,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("My Jobs",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: 0,
                              right: 5,
                            ),
                            //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 2.0,
                              backgroundColor: header,
                              //backgroundImage: AssetImage('assets/user.png'),
                            ),
                            decoration: new BoxDecoration(
                              color: header, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Text("6 new jobs",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: header,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  height: 2,
                  margin: EdgeInsets.only(top: 20),
                  child: Divider(
                    color: Colors.grey[300],
                  )),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: Colors.black45,
                          size: 23,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Settings",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ))
                      ],
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.help,
                          color: Colors.black45,
                          size: 23,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Help & Support",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ))
                      ],
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.black45,
                          size: 23,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Logout", style: TextStyle(fontSize: 14)),
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
      appBar: AppBar(
        //iconTheme: IconThemeData(color: header),
        //automaticallyImplyLeading: false,
        backgroundColor: header,
        leading: GestureDetector(
          onTap: () {
            //Scaffold.of(context).openDrawer();
            _scaffoldKey.currentState.openDrawer();
          },
          child: Container(
              margin: EdgeInsets.only(left: 10),
              //color: Colors.red,
              child: Icon(
                Icons.menu,
                size: 27,
              )),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 0, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      border: Border.all(color: Colors.white70)),
                  child: TextField(
                    //controller: phoneController,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.black45),
                      //labelStyle: TextStyle(color: Colors.white70),
                      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatListPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[],
      ),
      //body: Text("lol")
      body: pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.group), title: SizedBox.shrink()),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.add_circle_outline), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.work), title: SizedBox.shrink())
        ],
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}
