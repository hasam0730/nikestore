import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:nike_store_app/shoes.dart';

class ProductCard extends StatelessWidget {
  final Shoes shoes;
  final int cardNum;

  const ProductCard({Key key, this.shoes, this.cardNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(642),
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(40)),
            child: Container(
              width: ScreenUtil().setWidth(620),
              height: ScreenUtil().setHeight(990),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: shoes.colors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                      child: Text(
                        '0${cardNum + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      top: ScreenUtil().setHeight(50),
                      left: ScreenUtil().setWidth(40)),
                  Positioned(
                    child: Image.asset('name'),
                    top: ScreenUtil().setHeight(60),
                    left: ScreenUtil().setWidth(-22),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
