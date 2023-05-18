import 'package:json_annotation/json_annotation.dart';

part 'manufacturer.g.dart';

@JsonSerializable()
class ManufacturerResponse {
  @JsonKey(name: 'manufacturers')
  final List<Manufacturer> manufacturers;

  ManufacturerResponse({
    required this.manufacturers,
  });

  factory ManufacturerResponse.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturerResponseToJson(this);
}

@JsonSerializable()
class Manufacturer {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'active')
  final String active;

  factory Manufacturer.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerFromJson(json);
  }

  Manufacturer({
    required this.id,
    required this.name,
    required this.active,
  });

  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);
}
