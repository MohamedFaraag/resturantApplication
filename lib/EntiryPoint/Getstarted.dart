import 'package:flutter/material.dart';
import '../pages/Tips.dart';
import '../Helpers/constant.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double myHight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
        child: Column(
          children: [
            new Container(
              height: myHight * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/tip0.png'),
                      fit: BoxFit.contain)),
            ),
            new Container(
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
                      Text('Happy Meals'),
                      Text(
                          'Discover the best foods from\n Over 1.000 restaurant'),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: RaisedButton(
                              child: Text('Click Here'),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tips()))))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
