class MainWeather {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;

  MainWeather.fromJson(Map<String, dynamic> json):
  this.temp = json['temp'],
  this.feels_like = json['feel_like'],
  this.temp_min = json['temp_min'],
  this.temp_max = json['temp_max'],
  this.pressure = json['pressure'],
  this.humidity = json['humidity'];

  Map<String, dynamic> toJson() => {
    'temp' : this.temp,
    'feels_like' : this.feels_like,
    'temp_min' : this.temp_min,
    'temp_max' : this.temp_max,
    'pressure' : this.pressure,
    'humidity' : this.humidity
  };
}