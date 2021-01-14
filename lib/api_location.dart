import 'dart:convert';
import 'models/province_api_location.dart';
import 'package:http/http.dart' as http;

class ApiLocation{
  Future<List<Province>>getAllProvinceOfVietNam({Function (String) onError}) async{
    String endpoint = "https://vapi.vnappmob.com/api/province/";
    List<Province> province = List();
    http.Response response = await http.get(endpoint); //response nhận giá trị được API trả về
    if(response.statusCode == 200){
      try{
        dynamic jsonRaw = json.decode(response.body); //jsonRaw nhận dữ liệu trả về dạng Json
        List<dynamic> data = jsonRaw["results"];
        data.forEach((element) {
          province.add(Province.fromJson(element));
        });
      }catch(error){
        onError("Something get wrong!");
      }
    }else{
      onError("Something get wrong! Status code ${response.statusCode}");
    }
    return province;
  }
}