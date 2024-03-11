// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_available.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockAvailableResponse _$StockAvailableResponseFromJson(
        Map<String, dynamic> json) =>
    StockAvailableResponse(
      items: (json['stock_availables'] as List<dynamic>)
          .map((e) => StockAvailable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StockAvailableResponseToJson(
        StockAvailableResponse instance) =>
    <String, dynamic>{
      'stock_availables': instance.items,
    };

StockAvailable _$StockAvailableFromJson(Map<String, dynamic> json) =>
    StockAvailable(
      id: json['id'] as int,
      productId: JsonInt.fromJson(json['id_product'] as String),
      quantity: JsonInt.fromJson(json['quantity'] as String),
    );

Map<String, dynamic> _$StockAvailableToJson(StockAvailable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_product': instance.productId,
      'quantity': instance.quantity,
    };
