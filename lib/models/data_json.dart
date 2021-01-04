import 'package:flutter_app/models/Sys.dart';
import 'package:flutter_app/models/clouds.dart';
import 'package:flutter_app/models/coord.dart';
import 'package:flutter_app/models/main_model.dart';
import 'package:flutter_app/models/weather.dart';
import 'package:flutter_app/models/wind.dart';

class DataJson {
  Coord coord;
  Weather weather;
  final String base;
  MainWeather mainWeather;
  final int visibility;
  Wind wind;
  Clouds clouds;
  final int dt;
  SysWeather sysWeather;
  final int timezone;
  final int id;
  final String name;

  DataJson.formJson(Map<String, dynamic> json):
  this.coord = Coord.fromJson(json['coord']),
  this.weather = Weather.fromJson(json['weather']),
  this.base = json['base'],
  this.mainWeather = MainWeather.fromJson(json['main']),
  this.visibility = json['visibility'],
  this.wind = Wind.fromJson(json['wind']),
  this.clouds = Clouds.fromJson(json['clouds']),
  this.dt = json['dt'],
  this.sysWeather = SysWeather.fromJson(json['sys']),
  this.timezone = json['timezone'],
  this.id = json['id'],
  this.name = json['name'];


  Map<String, dynamic> toJson() => {
    'coord' : this.coord,
    'weather' : this.weather,
    'base' : this.base,
    'main' : this.mainWeather,
    'visibility' : this.visibility,
    'wind' : this.wind,
    'clouds' : this.clouds,
    'dt' : this.dt,
    'sys' : this.sysWeather,
    'timezone' : this.timezone,
    'id' : this.id,
    'name' : this.name
  };
}