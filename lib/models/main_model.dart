class MainWeather {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final double pressure;
  final double humidity;

  MainWeather.fromJson(Map<String, dynamic> json):
  this.temp = (json['temp']).toDouble(),
  this.feels_like = json['feels_like'],
  this.temp_min = json['temp_min'].toDouble(),
  this.temp_max = json['temp_max'].toDouble(),
  this.pressure = json['pressure'].toDouble(),
  this.humidity = json['humidity'].toDouble();

  Map<String, dynamic> toJson() => {
    'temp' : this.temp,
    'feels_like' : this.feels_like,
    'temp_min' : this.temp_min,
    'temp_max' : this.temp_max,
    'pressure' : this.pressure,
    'humidity' : this.humidity
  };
}