import 'package:flutter/material.dart';
import '../pages/myDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "pro1",
      "pro_desc": "desc1",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "1",
      "pro_name": "pro1",
      "pro_desc": "desc1",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "1",
      "pro_name": "pro1",
      "pro_desc": "desc1",
      "pro_image": "images/product/pro3.jpg"
    },
  ];
  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat2",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "cat3",
      "cat_image": "images/category/cat4.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat4",
      "cat_image": "images/category/cat5.png"
    },
    {
      "cat_id": "6",
      "cat_name": "cat5",
      "cat_image": "images/category/cat6.png"
    },
    {"cat_id": "7", "cat_name": "cat6", "cat_image": "images/category/cat7.png"}
  ];
  @override
  Widget build(BuildContext context) {
    print(myarr_category.length.toString());
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Scaffold(
        key: _keyDrawer,
        drawer: MyDrawer(),
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
                    new IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 40,
                      ),
                      color: Colors.red,
                      onPressed: () {
                        _keyDrawer.currentState.openDrawer();
                      },
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
              new Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myarr_category.length,
                    itemBuilder: (BuildContext context, index) {
                      return SingleCategory(
                        cat_id: myarr_category[index]["cat_id"],
                        cat_name: myarr_category[index]["cat_name"],
                        cat_image: myarr_category[index]["cat_image"],
                      );
                    }),
              ),
              //
              new Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: myarr_product.length,
                    itemBuilder: (BuildContext context, index) {
                      return SingleProduct(
                        pro_id: myarr_product[index]["pro_id"],
                        pro_name: myarr_product[index]["pro_name"],
                        pro_desc: myarr_product[index]["pro_desc"],
                        pro_image: myarr_product[index]["pro_image"],
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu), label: 'restaurant_menu'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_name, this.cat_image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(right: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.red[100]),
              height: 64.0,
              width: 64.0,
              child: Image.asset(cat_image),
            ),
            Text(
              cat_name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          new Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(pro_image),
              ),
            ),
          ),
          new Text(
            pro_name.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          new Text(
            pro_desc,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
