import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class JobDetPage extends StatefulWidget {
  @override
  _JobDetPageState createState() => _JobDetPageState();
}

class _JobDetPageState extends State<JobDetPage> {
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
                    Text("Job Name",
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
                child: SingleChildScrollView(
              child: Container(
                  child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: header,
                          padding: const EdgeInsets.all(0.0),
                          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Image.asset(
                            'assets/job1.png',
                            //height: 100,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Post : ",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            "Software Engineer",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Company : ",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 8, left: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(right: 8, top: 0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                // Icon(
                                //   Icons.attach_money,
                                //   size: 13,
                                //   color: header,
                                // ),
                                Container(
                                  margin: EdgeInsets.only(left: 0),
                                  child: Text("Full Time",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey)),
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
                                    backgroundColor: header,
                                    //backgroundImage: AssetImage('assets/user.png'),
                                  ),
                                  decoration: new BoxDecoration(
                                    color: header, // border color
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0),
                                  child: Text("Sylhet",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
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
                                    backgroundColor: header,
                                    //backgroundImage: AssetImage('assets/user.png'),
                                  ),
                                  decoration: new BoxDecoration(
                                    color: header, // border color
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.attach_money,
                                      size: 13,
                                      color: header,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      child: Text("120 k/month",
                                          style: TextStyle(
                                              fontSize: 12, color: header)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 15, right: 5, top: 15),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.bookmark_border,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 5, right: 15, top: 15),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.black45,
                                  size: 17,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 15, top: 10, right: 5),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.pages,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Page",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 5, right: 15, top: 10),
                            padding: EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Colors.black45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.black45,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Report",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.work,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Requirements \n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "N/A",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.book,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Education \n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "Graduate",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.group_work,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Job Posted By \n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "Facebook",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.calendar_today,
                                size: 17, color: Colors.black45)),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Last Date \n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: "28/07/2019",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                // can add more TextSpans here...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: header,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      margin: EdgeInsets.all(10),
                      child: Text("Apply Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))),
                ],
              )),
            )),
          ],
        ));
  }
}
