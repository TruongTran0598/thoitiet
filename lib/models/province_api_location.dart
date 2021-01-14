class Province {
  final String province_id;
  final String province_name;
  final String province_type;

  Province.fromJson(Map<String, dynamic> json):
  this.province_id = json['province_id'],
  this.province_name = json['province_name'],
  this.province_type = json['province_type'];

  Map<String, dynamic> toJson() => {
    'province_id' : this.province_id,
    'province_name' : this.province_name,
    'province_type' : this.province_type
  };
}