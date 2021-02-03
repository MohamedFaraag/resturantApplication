import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    "توصيل الطلب الى",
                    style: TextStyle(color: Colors.grey),
                  )),
              Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        "موقع الزبون",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      )),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                ],
              ),
              new Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.menu,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    Expanded(
                      child: new Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25.0)),
                        child: new TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "بحث",
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
