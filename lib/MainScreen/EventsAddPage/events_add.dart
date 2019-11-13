import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import '../../main.dart';

class EventAddPage extends StatefulWidget {
  @override
  _EventAddPageState createState() => new _EventAddPageState();
}

class _EventAddPageState extends State<EventAddPage> {
  int _current = 0;
  int _isBack = 0;
  int con = 1, con1 = 0;
  int yn = 1, yn1 = 0;
  String result = '';
  bool _isChecked = false;
  List<String> user = [];
  var users;
  String date = "Today";
  String date1 = "Date";
  String dateStr = "Today";
  String dateStr1 = "Date";
  String time = "";
  String time1 = "Time";
  var dd, finalDate, strDate;
  var dd1, finalDate1, strDate1;
  var now = new DateTime.now();
  DateTime _date = DateTime.now();
  DateTime _date1 = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay _time1 = TimeOfDay.now();

  Future<File> fileImage;

  pickImagefromGallery(ImageSource src) {
    setState(() {
      fileImage = ImagePicker.pickImage(source: src);
    });
  }

  @override
  void initState() {
    print(user.length);
    setState(() {
      date = DateFormat("dd-MM-yyyy").format(now);
      //date1 = DateFormat("dd-MM-yyyy").format(now);
      dateStr = DateFormat("MMM dd, yyyy").format(now);
      //dateStr1 = DateFormat("MMM dd, yyyy").format(now);
      time = DateFormat("hh:mm a").format(now);
      //time1 = DateFormat("hh:mm a").format(now);
    });
    print(date);
    print(date1);
    super.initState();
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1915),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      dd = DateTime.parse(_date.toString());
      finalDate = "${dd.day}-${dd.month}-${dd.year}";
      strDate = "${dd.day}-${dd.month}-${dd.year}";
      date = finalDate.toString();
      dateStr = strDate.toString();
      setState(() {
        _date = picked;
        var dd2 = DateTime.parse(_date.toString());
        String day = "${dd2.day}";
        int dday = int.parse(day);
        if (dday < 10) {
          day = "0" + day;
        }

        String month = "${dd2.month}";
        String months = "${dd2.month}";
        int mmonth = int.parse(month);
        // if (mmonth < 10) {
        //   month = "0" + month;
        // }
        if (mmonth == 1) {
          months = "Jan";
        }
        if (mmonth == 2) {
          months = "Feb";
        }
        if (mmonth == 3) {
          months = "Mar";
        }
        if (mmonth == 4) {
          months = "Apr";
        }
        if (mmonth == 5) {
          months = "May";
        }
        if (mmonth == 6) {
          months = "Jun";
        }
        if (mmonth == 7) {
          months = "Jul";
        }
        if (mmonth == 8) {
          months = "Aug";
        }
        if (mmonth == 9) {
          months = "Sep";
        }
        if (mmonth == 10) {
          months = "Oct";
        }
        if (mmonth == 11) {
          months = "Nov";
        }
        if (mmonth == 12) {
          months = "Dec";
        }

        String year = "${dd2.year}";
        int yyear = int.parse(year);
        if (yyear < 10) {
          year = "0" + year;
        }
        var finalDate2 = "$day-$month-$year";
        var strDate2 = "$months $day, $year";
        date = finalDate2.toString();
        dateStr = strDate2.toString();
      });
    }
    // print("dateStr");
    // print(date);
  }

  Future<Null> _selectDate1(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date1,
      firstDate: DateTime(1915),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      dd1 = DateTime.parse(_date1.toString());
      finalDate1 = "${dd1.day}-${dd1.month}-${dd1.year}";
      date1 = finalDate1.toString();
      setState(() {
        _date1 = picked;
        var dd3 = DateTime.parse(_date1.toString());
        String day = "${dd3.day}";
        int dday = int.parse(day);
        if (dday < 10) {
          day = "0" + day;
        }

        String month = "${dd3.month}";
        String months = "${dd3.month}";
        int mmonth = int.parse(month);
        // if (mmonth < 10) {
        //   month = "0" + month;
        // }
        if (mmonth == 1) {
          months = "Jan";
        }
        if (mmonth == 2) {
          months = "Feb";
        }
        if (mmonth == 3) {
          months = "Mar";
        }
        if (mmonth == 4) {
          months = "Apr";
        }
        if (mmonth == 5) {
          months = "May";
        }
        if (mmonth == 6) {
          months = "Jun";
        }
        if (mmonth == 7) {
          months = "Jul";
        }
        if (mmonth == 8) {
          months = "Aug";
        }
        if (mmonth == 9) {
          months = "Sep";
        }
        if (mmonth == 10) {
          months = "Oct";
        }
        if (mmonth == 11) {
          months = "Nov";
        }
        if (mmonth == 12) {
          months = "Dec";
        }

        String year = "${dd3.year}";
        int yyear = int.parse(year);
        if (yyear < 10) {
          year = "0" + year;
        }

        var finalDate3 = "$day-$month-$year";
        var strDate3 = "$months $day, $year";
        date1 = finalDate3.toString();
        dateStr1 = strDate3.toString();
      });
    }
    // print("dateStr1");
    // print(date1);
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _time);
    if (picked != null) {
      setState(() {
        _time = picked;
        String ap = "${_time.hour}";
        int ampm = int.parse(ap);
        String amPm = "PM";

        String hh = "${_time.hourOfPeriod}";
        int h = int.parse(hh);
        if (h < 10) {
          hh = "0" + hh;
        }
        if (h == 00) {
          hh = "12";
        }

        String mm = "${_time.minute}";
        int m = int.parse(mm);
        if (m < 10) {
          mm = "0" + mm;
        }

        if (ampm < 12) {
          amPm = "AM";
        } else {
          amPm = "PM";
        }
        var tt = "$hh:$mm $amPm";
        time = tt.toString();
      });
    }
    //print(time);
  }

  Future<Null> _selectTime1(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _time1);
    if (picked != null) {
      setState(() {
        _time1 = picked;
        String ap = "${_time1.hour}";
        int ampm = int.parse(ap);
        String amPm = "PM";

        String hh = "${_time1.hourOfPeriod}";
        int h = int.parse(hh);
        if (h < 10) {
          hh = "0" + hh;
        }
        if (h == 00) {
          hh = "12";
        }

        String mm = "${_time1.minute}";
        int m = int.parse(mm);
        if (m < 10) {
          mm = "0" + mm;
        }

        if (ampm < 12) {
          amPm = "AM";
        } else {
          amPm = "PM";
        }
        var tt = "$hh:$mm $amPm";
        time1 = tt.toString();
      });
    }
    //print(time1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                    Text("Create Event",
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
              child: Column(
                children: <Widget>[
                  FutureBuilder<File>(
                    future: fileImage,
                    builder:
                        (BuildContext context, AsyncSnapshot<File> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.data != null) {
                        return GestureDetector(
                          onTap: () {
                            pickImagefromGallery(ImageSource.gallery);
                          },
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  //color: header,
                                  padding: const EdgeInsets.all(0.0),
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Image.file(
                                    snapshot.data,
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (snapshot.error != null) {
                        return GestureDetector(
                          onTap: () {
                            pickImagefromGallery(ImageSource.gallery);
                          },
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  //color: header,
                                  padding: const EdgeInsets.all(0.0),
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/white.png',
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                                Container(
                                  color: Colors.black.withOpacity(0.7),
                                  width: MediaQuery.of(context).size.width,
                                  height: 170,
                                  padding: const EdgeInsets.all(0.0),
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      width: 180,
                                      margin: EdgeInsets.only(top: 85),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              width: 0.5,
                                              color: Colors.white70)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // Icon(
                                          //   Icons.photo_library,
                                          //   size: 16,
                                          //   color: Colors.white70,
                                          // ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Error picking image!",
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return GestureDetector(
                          onTap: () {
                            pickImagefromGallery(ImageSource.gallery);
                          },
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  //color: header,
                                  padding: const EdgeInsets.all(0.0),
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/white.png',
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                                Container(
                                  color: Colors.black.withOpacity(0.7),
                                  width: MediaQuery.of(context).size.width,
                                  height: 170,
                                  padding: const EdgeInsets.all(0.0),
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      width: 180,
                                      margin: EdgeInsets.only(top: 85),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              width: 0.5,
                                              color: Colors.white70)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.photo_library,
                                            size: 16,
                                            color: Colors.white70,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "Add Event Photo",
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 15, top: 25, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Event Name",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.calendar_today,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Type Event name",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Event Type",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              con = 1;
                              con1 = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 15, right: 5),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: (con == 1 && con1 == 0)
                                          ? header
                                          : Colors.white,
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Icon(Icons.done,
                                      size: 14,
                                      color: (con == 1 && con1 == 0)
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      con = 1;
                                      con1 = 0;
                                    });
                                  },
                                  child: Text(
                                    'Private',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              con1 = 1;
                              con = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 5),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: (con1 == 1 && con == 0)
                                          ? header
                                          : Colors.white,
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Icon(Icons.done,
                                      size: 14,
                                      color: (con1 == 1 && con == 0)
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      con1 = 1;
                                      con = 0;
                                    });
                                  },
                                  child: Text(
                                    'Public',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
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
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Date & Time",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.timer, color: Colors.grey),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  _selectDate(context);
                                },
                                child: Container(
                                  width: 160,
                                  margin: EdgeInsets.only(left: 10, right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Colors.white70)),
                                  child: Text("Start : $dateStr",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _selectTime(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Colors.white70)),
                                  child: Text("$time",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.timer, color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  _selectDate1(context);
                                },
                                child: Container(
                                  width: 160,
                                  margin: EdgeInsets.only(left: 10, right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Colors.white70)),
                                  child: Text("End   : $dateStr1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: dateStr1 == "Date"
                                              ? Colors.black26
                                              : Colors.black54)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _selectTime1(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Colors.white70)),
                                  child: Text("$time1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: time1 == "Time"
                                              ? Colors.black26
                                              : Colors.black54)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Location",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    Icon(Icons.location_on, color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Type Location",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Details",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.info_outline,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Type Details",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Guest user can invite friends",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              yn = 1;
                              yn1 = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 15, right: 5),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: (yn == 1 && yn1 == 0)
                                          ? header
                                          : Colors.white,
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Icon(Icons.done,
                                      size: 14,
                                      color: (yn == 1 && yn1 == 0)
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      yn = 1;
                                      yn1 = 0;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              yn1 = 1;
                              yn = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 5),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: (yn1 == 1 && yn == 0)
                                          ? header
                                          : Colors.white,
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Icon(Icons.done,
                                      size: 14,
                                      color: (yn1 == 1 && yn == 0)
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      yn1 = 1;
                                      yn = 0;
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
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
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text("Co-hosts",
                        style: TextStyle(color: Colors.black54)),
                  ),
                  //Container(height: 2, child: Divider()),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            //color: Colors.red,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 0),
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(0.5),

                                decoration: new BoxDecoration(
                                  //color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.group, color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white70)),
                              child: TextField(
                                //controller: phoneController,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  hintText: "Type Co-hosts",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 5.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: header,
                        border: Border.all(width: 0.2, color: header)),
                    child: Text(
                      "Create",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
