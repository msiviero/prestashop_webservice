// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerResponse _$ManufacturerResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturerResponse(
      items: (json['manufacturers'] as List<dynamic>)
          .map((e) => Manufacturer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManufacturerResponseToJson(
        ManufacturerResponse instance) =>
    <String, dynamic>{
      'manufacturers': instance.items,
    };

Manufacturer _$ManufacturerFromJson(Map<String, dynamic> json) => Manufacturer(
      id: json['id'] as int,
      name: json['name'] as String,
      active: json['active'] as String,
    );

Map<String, dynamic> _$ManufacturerToJson(Manufacturer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };
