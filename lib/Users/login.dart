import 'package:flutter/material.dart';
import 'forgetPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Form(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 35.0),
                    child: Text(
                      "سجل الدخول الى حسابك من هنا ",
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "رقم موبايلك", border: InputBorder.none),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "الرجاء ادخال رقم الموبايل";
                        }
                        return '';
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "كلمة المرور",
                                border: InputBorder.none),
                            validator: (String value) {
                              if (value.isEmpty || value.length < 6) {
                                return "الرجاء ادخال كلمة المرور";
                              }
                              return '';
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()));
                          },
                          child: Text(
                            "نسيت ؟",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "دخول",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    margin: EdgeInsets.only(bottom: 10.0, top: 30.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ],
              ),
            )),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "اذا ليس لديك حساب سجل من هنا ",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "تسجيل جديد",
                      style: TextStyle(color: Colors.red, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
