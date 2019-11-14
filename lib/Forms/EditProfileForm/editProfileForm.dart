import 'dart:convert';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:social_app/MainScreen/LoginPage/loginPage.dart';
import 'package:social_app/main.dart';

class EditProfileForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditProfileFormState();
  }
}

class EditProfileFormState extends State<EditProfileForm> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();

  ScaffoldState scaffoldState;
  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  int count = 0,
      gen = 1,
      gen1 = 0,
      selectType = 0,
      userType = 0,
      userType1 = 0,
      working = 0,
      studying = 0;
  String theme = "", gender = "female", user = "";
  String typeService = "",
      productBuyer = "",
      productSeller = "",
      productCategory = "",
      typeCategory = "",
      uType = "",
      runningdate = "Starting date *",
      endingDate = "Ending date *",
      eduStart = "Starting date *",
      eduEnd = "Ending date *";

  List<String> selectedCategory = [];
  var selectedCat;

  List type = ["Seller", "Buyer"];
  List sellerOpt = [
    "Product Seller",
    "Freelancer",
    "Trade Financier",
    "Inspection & Logistics Provider",
    "Drop Shipper",
    "Fulfilment Service Provider",
    "General Business Worker"
  ];
  List buyerOpt = ["Business Buyer"];
  //List categories;
  var catList;
  var dd, finalDate;
  bool isLoading = true;
  bool isSubmit = false;
  bool isOpen = false;
  DateTime _date = DateTime.now();

  List<DropdownMenuItem<String>> _dropDowntypeService,
      _dropDownBuyerItems,
      _dropDownSellerItems,
      _dropDownCategoryItems;

  List<DropdownMenuItem<String>> getDropDowntypeService() {
    List<DropdownMenuItem<String>> items = new List();
    for (String typeServe in type) {
      items.add(new DropdownMenuItem(
          value: typeServe,
          child: new Text(
            typeServe,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownColorItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String sellersOpt in sellerOpt) {
      items.add(new DropdownMenuItem(
          value: sellersOpt,
          child: new Text(
            sellersOpt,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownSizeItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String buyersOpt in buyerOpt) {
      items.add(new DropdownMenuItem(
          value: buyersOpt,
          child: new Text(
            buyersOpt,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownCategoryItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String cat in catList) {
      items.add(new DropdownMenuItem(
          value: cat,
          child: new Text(
            cat,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  @override
  void initState() {
    _dropDowntypeService = getDropDowntypeService();
    typeService = _dropDowntypeService[0].value;

    _dropDownBuyerItems = getDropDownColorItems();
    productBuyer = _dropDownBuyerItems[0].value;

    _dropDownSellerItems = getDropDownSizeItems();
    productSeller = _dropDownSellerItems[0].value;

    // print("selectedCategory.length");
    // print(selectedCategory.length);

    super.initState();
  }

  void _selectDate(BuildContext context) {
    DatePicker.showDatePicker(context,
        theme: DatePickerTheme(
          containerHeight: 210.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 1, 1),
        maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
      print('confirm $date');
      runningdate = '${date.day} - ${date.month} - ${date.year}';
      setState(() {});
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  void _selectDate1(BuildContext context) {
    DatePicker.showDatePicker(context,
        theme: DatePickerTheme(
          containerHeight: 210.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 1, 1),
        maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
      print('confirm $date');
      endingDate = '${date.day} - ${date.month} - ${date.year}';
      setState(() {});
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  void _selectDate2(BuildContext context) {
    DatePicker.showDatePicker(context,
        theme: DatePickerTheme(
          containerHeight: 210.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 1, 1),
        maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
      print('confirm $date');
      eduStart = '${date.day} - ${date.month} - ${date.year}';
      setState(() {});
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  void _selectDate3(BuildContext context) {
    DatePicker.showDatePicker(context,
        theme: DatePickerTheme(
          containerHeight: 210.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 1, 1),
        maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
      print('confirm $date');
      eduEnd = '${date.day} - ${date.month} - ${date.year}';
      setState(() {});
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 0, left: 20),
                child: Text(
                  "Create account and start making friends worldwide",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w300),
                )),

            ////// <<<<< First Name Field start >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: firstNameController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "First name *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< First Name Field end >>>>> //////

            ////// <<<<< Last Name Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: lastNameController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Last name *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Last Name Field end >>>>> //////

            ////// <<<<< User Name Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: userNameController,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Username *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< User Name Field end >>>>> //////

            ////// <<<<< Email Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Email *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Email Field end >>>>> //////

            ////// <<<<< Password Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              controller: passwordController,
                              obscureText: count % 2 != 0 ? false : true,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Oswald',
                              ),
                              decoration: InputDecoration(
                                hintText: "Password *",
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                                //labelStyle: TextStyle(color: Colors.white70),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  count % 2 != 0
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  size: 22,
                                  color:
                                      count % 2 != 0 ? header : Colors.black38,
                                )),
                          )
                        ],
                      )),
                ],
              ),
            ),
            ////// <<<<< Password Field end >>>>> //////

            ////// <<<<< Profile Bio Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: jobTitleController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Bio *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Profile Bio Field end >>>>> //////

            ////// <<<<< Gender Selection >>>>> //////
            Container(
              margin: EdgeInsets.only(left: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Gender * : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w300),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gen = 1;
                        gen1 = 0;
                        gender = "female";
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: gen == 1 ? header : Colors.white,
                                border: Border.all(
                                    color: gen == 1 ? header : Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Icon(
                              Icons.done,
                              size: 12,
                              color: gen == 1 ? Colors.white : Colors.black38,
                            ),
                          ),
                          Container(
                              margin:
                                  EdgeInsets.only(right: 20, left: 5, top: 0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Female",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gen = 0;
                        gen1 = 1;
                        gender = "male";
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: gen1 == 1 ? header : Colors.white,
                                border: Border.all(
                                    color: gen1 == 1 ? header : Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Icon(
                              Icons.done,
                              size: 12,
                              color: gen1 == 1 ? Colors.white : Colors.black38,
                            ),
                          ),
                          Container(
                              margin:
                                  EdgeInsets.only(right: 20, left: 5, top: 0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Male",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ////// <<<<< Experience Field >>>>> //////
            Container(
              margin: EdgeInsets.only(top: 20, left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent working experience : ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w300),
              ),
            ),

            ////// <<<<< Organization Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: jobTitleController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Organization *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Organization Field end >>>>> //////

            ///////// <<<<< Position Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: jobTitleController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Position *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Position Field end >>>>> //////

            ////// <<<<< Starting date >>>>> //////
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
              padding:
                  EdgeInsets.only(left: 20, right: 15, top: 13, bottom: 13),
              child: GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        runningdate == "Starting date *"
                            ? "Starting date *"
                            : "Starting date : " + runningdate,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black38,
                            size: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            ////// <<<<< Starting date end >>>>> //////

            ////// <<<<< Ending date >>>>> //////
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
              padding:
                  EdgeInsets.only(left: 20, right: 15, top: 13, bottom: 13),
              child: GestureDetector(
                onTap: () {
                  working == 1 ? null : _selectDate1(context);
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        endingDate == "Ending date *"
                            ? "Ending date *"
                            : "Ending date : " + endingDate,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: working == 1
                                ? Colors.grey[350]
                                : Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Icon(
                            Icons.calendar_today,
                            color: working == 1
                                ? Colors.grey[350]
                                : Colors.black38,
                            size: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            ////// <<<<< Ending date end >>>>> //////

            ////// <<<<< Currently working start >>>>> //////
            GestureDetector(
              onTap: () {
                setState(() {
                  if (working == 0) {
                    working = 1;
                  } else {
                    working = 0;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 25),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                          color: working == 1 ? header : Colors.white,
                          border: Border.all(
                              color: working == 1 ? header : Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Icon(
                        Icons.done,
                        size: 12,
                        color: working == 1 ? Colors.white : Colors.black38,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20, left: 5, top: 0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Currently working",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            ////// <<<<< Currently working end >>>>> //////

            ////// <<<<< Experience Field >>>>> //////
            Container(
              margin: EdgeInsets.only(top: 20, left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Last education : ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w300),
              ),
            ),

            ////// <<<<< Organization Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: jobTitleController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "School/College/University *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Organization Field end >>>>> //////

            ///////// <<<<< Position Field >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        controller: jobTitleController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Oswald',
                        ),
                        decoration: InputDecoration(
                          hintText: "Dept/Degree *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 2.5, 20.0, 2.5),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            ////// <<<<< Position Field end >>>>> //////

            ////// <<<<< Starting date >>>>> //////
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
              padding:
                  EdgeInsets.only(left: 20, right: 15, top: 13, bottom: 13),
              child: GestureDetector(
                onTap: () {
                  _selectDate2(context);
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        eduStart == "Starting date *"
                            ? "Starting date *"
                            : "Starting date : " + eduStart,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black38,
                            size: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            ////// <<<<< Starting date end >>>>> //////

            ////// <<<<< Ending date >>>>> //////
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
              padding:
                  EdgeInsets.only(left: 20, right: 15, top: 13, bottom: 13),
              child: GestureDetector(
                onTap: () {
                  studying == 1 ? null : _selectDate3(context);
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        eduEnd == "Ending date *"
                            ? "Ending date *"
                            : "Ending date : " + eduEnd,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: studying == 1
                                ? Colors.grey[350]
                                : Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Icon(
                            Icons.calendar_today,
                            color: studying == 1
                                ? Colors.grey[350]
                                : Colors.black38,
                            size: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            ////// <<<<< Ending date end >>>>> //////

            ////// <<<<< Currently working start >>>>> //////
            GestureDetector(
              onTap: () {
                setState(() {
                  if (studying == 0) {
                    studying = 1;
                  } else {
                    studying = 0;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 25),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                          color: studying == 1 ? header : Colors.white,
                          border: Border.all(
                              color: studying == 1 ? header : Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Icon(
                        Icons.done,
                        size: 12,
                        color: studying == 1 ? Colors.white : Colors.black38,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20, left: 5, top: 0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Currently studying",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            ////// <<<<< Currently working end >>>>> //////

            ////// <<<<< Sign up button >>>>> //////
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    //onTap: isSubmit ? null : signUpButton,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: isSubmit ? Colors.grey : header,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Text(
                          isSubmit ? "Please wait..." : "Edit Profile",
                          style: TextStyle(
                            color: isSubmit ? Colors.black : Colors.white,
                            fontSize: 17,
                            fontFamily: 'BebasNeue',
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> _showCompleteDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: header, width: 1.5),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          Icons.done,
                          color: header,
                          size: 50,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Account has been created successfully. Please check your email to verify your account",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
