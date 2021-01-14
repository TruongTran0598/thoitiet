import 'package:flutter/material.dart';

import 'min_max_feels.dart';

class MainInforWeather extends StatelessWidget{
  final String tempValue;
  final String descriptionWeatherValues;
  final String tempMinValue;
  final String tempMaxValue;
  final String feelsLikeValue;

  const MainInforWeather({
    Key key,
    this.tempValue,
    this.descriptionWeatherValues,
    this.tempMinValue,
    this.tempMaxValue,
    this.feelsLikeValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child:Padding(
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget> [
              Text(
                "${tempValue}\u00b0",
                style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                "- ${descriptionWeatherValues} -",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 20,),
              MinMaxFeels(
                minCel: "${tempMinValue}",
                maxCel: "${tempMaxValue}",
                feelsCel: "${feelsLikeValue}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}