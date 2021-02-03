import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';
import '../Helpers/constant.dart';
import '../Users/register.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarr = [
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمة تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip1.png"
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمة تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip2.png"
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمة تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myHight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      body: new Container(
        child: Column(
          children: [
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(top: 40.0, right: 30.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "دخول",
                  style: TextStyle(fontSize: 22.0, color: Colors.red),
                ),
              ),
            ),
            new Container(
              height: myHight * 4,
              child: new PageIndicatorContainer(
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: myarr.length,
                    itemBuilder: (BuildContext context, i) {
                      return SingleTips(
                        title: myarr[i]['title'],
                        info: myarr[i]['info'],
                        image: myarr[i]['image'],
                      );
                    }),
                shape: IndicatorShape.circle(),
                length: myarr.length,
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.white,
                indicatorSelectorColor: Colors.red,
              ),
            ),
            Expanded(
              child: new Container(
                height: myHight,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.red,
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[300],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  size: 15.0,
                                ),
                                Text(
                                  "متابعة باستخدام الفيس بوك",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          // MaterialButton(
                          //   onPressed: () {
                          //     // Navigator.push(
                          //     //     context,
                          //     //     MaterialPageRoute(
                          //     //         builder: (context) => Register()));
                          //   },
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: MediaQuery.of(context).size.width,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15.0),
                          //       color: Colors.red,
                          //     ),
                          //     child: Text(
                          //       "اSing In with FaceBook",
                          //       style:
                          //       TextStyle(fontSize: 20.0, color: Colors.white),
                          //     ),
                          //   ),
                          // ),
                          // Text('Happy Meals'),
                          // Text(
                          //     'Discover the best foods from\n Over 1.000 restaurant'),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15)),
                          //   child: RaisedButton(
                          //     child: Text('Click Here'),
                          //     onPressed: () => Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => Tips(),
                          //       ),
                          // ),
                          //   ),
                          //),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        )),
        new Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            )),
        new Padding(
            padding: EdgeInsets.only(bottom: 70.0),
            child: Text(
              info,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
