import 'dart:convert';

import 'models/data_json.dart';
import 'package:http/http.dart' as http;

class Api{
  Future<DataJson> getInformationWeatherInHanoi({Function(String) onError}) async {
    String endpoint = 'http://api.openweathermap.org/data/2.5/weather?q=HaNoi&units=metric&appid=edd18907326b3d7c678a223bd45bfb1b';
    http.Response response = await http.get(endpoint);
    if(response.statusCode == 200){
      try{
        dynamic data = json.decode(response.body);
        print(data);
        return DataJson.formJson(data);
      }catch(error){

      }
    }
  }
}