import 'dart:convert';
import 'models/data_json.dart';
import 'package:http/http.dart' as http;

class Api{
  Future<DataJson> getInformationWeatherInHanoi({Function(String) onError}) async {
    String endpoint = 'http://api.openweathermap.org/data/2.5/weather?q=HaNoi&units=metric&appid=edd18907326b3d7c678a223bd45bfb1b';
    http.Response response = await http.get(endpoint); // nhận dữ liệu API trả về,
    Map<String, dynamic> data;
    if(response.statusCode == 200){
      try{
        data = json.decode(response.body); // decode để nhận về dữ liệu dang Json
        return DataJson.formJson(data);
      }catch(error){
        onError("Something wrong");
      }
    }else{
      onError("Something error. Status code ${response.statusCode}");
    }
  }
}