class Weather{
  final int id_weather;
  final String main_weather;
  final String description_weather;
  final String icon_weather;

  Weather.fromJson(Map<String, dynamic> json):
  this.id_weather = json['id'],
  this.main_weather = json['main'],
  this.description_weather = json['description'],
  this.icon_weather = json['icon'];

  Map<String, dynamic> toJson() =>{
    'id' : this.id_weather,
    'main' : this.main_weather,
    'description' : this.description_weather,
    'icon' : this.icon_weather
  };
}