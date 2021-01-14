import 'package:flutter/material.dart';

class MinMaxFeels extends StatelessWidget{
  final String minCel;
  final String maxCel;
  final String feelsCel;

  const MinMaxFeels({
    Key key,
    this.minCel,
    this.maxCel,
    this.feelsCel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Image.asset(
          "assets/images/down_temperature.png",
          width: 14,
        ),
        Text(
          "${minCel}\u2103",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        ),
        SizedBox(width: 10,),
        Image.asset(
          "assets/images/up_temperature.png",
          width: 14,
        ),
        Text(
          "${maxCel}\u2103",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        ),
        SizedBox(width: 10,),
        Text(
          "Feels: ${feelsCel}\u2103",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        ),
      ],
    );
  }
}