import 'package:flutter/material.dart';
import 'package:flutter_app/sub_screen/rec_information.dart';

class MoreInforWeather extends StatelessWidget{
  final String minutesUpdateValue;
  final String speedWindValue;
  final String humidityValue;
  final String visibilityValue;
  final String pressureValue;
  final String percentCloudValue;
  final String sunriseValue;
  final String sunsetValue;

  const MoreInforWeather({
    Key key,
    this.minutesUpdateValue,
    this.speedWindValue,
    this.humidityValue,
    this.visibilityValue,
    this.pressureValue,
    this.percentCloudValue,
    this.sunriseValue,
    this.sunsetValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Text(
              "Latest update ${minutesUpdateValue} min ago",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                RecInforWeather(
                  nameImage: "wind",
                  informationWeather: "${speedWindValue} M/S",
                  nameInfor: "Wind",
                ),
                RecInforWeather(
                  nameImage: "humidity",
                  informationWeather: "${humidityValue}%",
                  nameInfor: "Humidity",
                ),
                RecInforWeather(
                  nameImage: "eye-open",
                  informationWeather: "${visibilityValue} KM",
                  nameInfor: "Visibility",
                ),
              ],
            ),
            SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                RecInforWeather(
                  nameImage: "gauge",
                  informationWeather: "${pressureValue} MPH",
                  nameInfor: "Pressure",
                ),
                RecInforWeather(
                  nameImage: "cloud",
                  informationWeather: "${percentCloudValue}%",
                  nameInfor: "Cloud",
                ),
                RecInforWeather(
                  nameImage: "sun",
                  //loi nay. khong hieu
                  informationWeather: "${sunriseValue}/${sunsetValue}",
                  nameInfor: "Sunrise/Sunset",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}