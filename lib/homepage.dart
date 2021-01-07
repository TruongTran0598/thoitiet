import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/models/data_json.dart';
import 'package:flutter_app/sub_screen/appbar_widget.dart';
import 'package:flutter_app/sub_screen/main_infor_weather.dart';
import 'package:flutter_app/sub_screen/more_infor_weather.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageScreen();
  }
}

class _HomePageScreen extends State<HomePage>{
  bool isLoading = false;
  DataJson dataJson;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((_) async {
      setState(() {
        return isLoading = true;
      });
      DataJson valueData = await Api().getInformationWeatherInHanoi(
        onError: (msg) {
          setState(() {
            isLoading = false;
            print(msg);
          });
        }
      );
      setState(() {
        isLoading = false;
        dataJson = valueData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarScreen(),
        body: isLoading ? Center(
          child: Text("Loading......"),
        ) : (dataJson == null) ? Center(
          child: Text("Data is empty!!!!"),
        ) : Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/duong.jpg"),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: <Widget> [
                MainInforWeather(
                  tempValue: "${dataJson.mainWeather.temp}",
                  descriptionWeatherValues: "${dataJson.weather.description_weather}",
                  tempMinValue: "${dataJson.mainWeather.temp_min}",
                  tempMaxValue: "${dataJson.mainWeather.temp_max}",
                  feelsLikeValue: "${dataJson.mainWeather.feels_like}",
                ),
                MoreInforWeather(
                  minutesUpdateValue: "${DateTime.fromMillisecondsSinceEpoch(dataJson.dt).minute}",
                  speedWindValue: "${dataJson.wind.speed}",
                  humidityValue: "${dataJson.mainWeather.humidity}",
                  visibilityValue: "${dataJson.visibility/1000}",
                  pressureValue: "${dataJson.mainWeather.pressure}",
                  percentCloudValue: "${dataJson.clouds.all}",
                  sunriseValue: "${DateTime.fromMicrosecondsSinceEpoch(dataJson.sysWeather.sunrise).hour}",
                  sunsetValue: "${DateTime.fromMicrosecondsSinceEpoch(dataJson.sysWeather.sunset).hour}",
                ),
              ],
            ),
          ),
        )
    );
  }
}