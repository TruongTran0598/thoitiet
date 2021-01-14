import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api_location.dart';
import 'package:flutter_app/models/province_api_location.dart';
import '../api.dart';

class LocationChoice extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LocationChoice();
  }
}
class _LocationChoice extends State<LocationChoice>{
  bool isLoading = false;
  List<String> province = List();
  String valueChoice = "Thành phố Hà Nội";

  void _getDataLocation() async {
    List<Province> valueLocation = await ApiLocation().getAllProvinceOfVietNam(
      onError: (msg) {
        setState(() {
          isLoading = false;
          print(msg);
        });
      }
    );
    setState(() {
      isLoading = false;
      valueLocation.forEach((element) {
        province.add(element.province_name);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getDataLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
          hint: Text("selected location"),
          dropdownColor: Colors.pink[50],
          icon: Icon(Icons.arrow_drop_down),
          value: valueChoice,
          items: province.map((valueIteam){
            return DropdownMenuItem(
              child: Text(valueIteam),
              value: valueIteam,
            );
          }).toList(),
          onChanged:(newValue){
            setState(() {
              valueChoice = newValue;
            });
          }
      ),
    );
  }
}