class SysWeather {
  final int type;
  final int id_sys;
  final String country;
  final int sunrise;
  final int sunset;

  SysWeather.fromJson(Map<String, dynamic> json):
      this.type = json['type'],
  this.id_sys = json['id'],
  this.country = json['country'],
  this.sunrise = json['sunrise'],
  this.sunset = json['sunset'];

  Map<String, dynamic> toJson() => {
    'type' : this.type,
    'id' : this.id_sys,
    'country' : this.country,
    'sunrise' : this.sunrise,
    'sunset' : this.sunset
  };
}