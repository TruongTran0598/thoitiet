import 'package:flutter/material.dart';

class RecInforWeather extends StatelessWidget{
  final String nameImage;
  final String informationWeather;
  final String nameInfor;

  const RecInforWeather({
    Key key,
    this.nameImage,
    this.informationWeather,
    this.nameInfor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 100,
        color: Colors.white.withOpacity(0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset(
              "assets/images/${nameImage}.png",
              height: 25,
            ),
            SizedBox(height: 10,),
            Text(
              informationWeather,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              nameInfor,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
    );
  }
}