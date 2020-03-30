import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store_app/brand_selector.dart';
import 'package:nike_store_app/product_card.dart';
import 'package:nike_store_app/shoes.dart';
import 'package:nike_store_app/utils/profileClipper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 1125,
      height: 2436,
      allowFontScaling: true,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(40),
                left: ScreenUtil().setWidth(40),
                right: ScreenUtil().setWidth(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      // TODO: ----
                    },
                  ),
                  ClipOval(
                    clipper: ProfileClipper(),
                    child: Image.network(
                      'https://s3.amazonaws.com/uifaces/faces/twitter/joelhelin/128.jpg',
                      width: ScreenUtil().setWidth(160),
                      height: ScreenUtil().setHeight(160),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(60),
                left: ScreenUtil().setWidth(70),
              ),
              child: Text(
                'Explore',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
            BrandSelector(
              brands: [
                'Nike',
                'Adidas',
                'Converse',
                'Vans',
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(50)),
            SizedBox(
              height: ScreenUtil().setHeight(1050),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final shoes = products[index];
                    return ProductCard(
                      shoes: shoes,
                      cardNum: index,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

var products = [
  Shoes(colors: [Colors.black12, Colors.blue], imagePath: 'assets/nike_1.png'),
  Shoes(colors: [Colors.black12, Colors.blue], imagePath: 'assets/nike_1.png'),
  Shoes(colors: [Colors.black12, Colors.blue], imagePath: 'assets/nike_1.png'),
];
