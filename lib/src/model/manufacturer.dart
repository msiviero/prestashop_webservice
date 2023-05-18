import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manufacturer.g.dart';

@JsonSerializable()
class ManufacturerResponse extends Equatable {
  @JsonKey(name: 'manufacturers')
  final List<Manufacturer> items;

  ManufacturerResponse({
    required this.items,
  });

  factory ManufacturerResponse.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturerResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class Manufacturer extends Equatable {
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

  @override
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
