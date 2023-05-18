// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificPriceResponse _$SpecificPriceResponseFromJson(
        Map<String, dynamic> json) =>
    SpecificPriceResponse(
      items: (json['specific_prices'] as List<dynamic>)
          .map((e) => SpecificPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecificPriceResponseToJson(
        SpecificPriceResponse instance) =>
    <String, dynamic>{
      'specific_prices': instance.items,
    };

SpecificPrice _$SpecificPriceFromJson(Map<String, dynamic> json) =>
    SpecificPrice(
      productId: stringToInt(json['id_product'] as String),
      reductionType: json['reduction_type'] as String,
      reduction: stringToDouble(json['reduction'] as String),
      from: stringToDate(json['from'] as String),
      to: stringToDate(json['to'] as String),
      id: json['id'] as int,
    );

Map<String, dynamic> _$SpecificPriceToJson(SpecificPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_product': instance.productId,
      'reduction_type': instance.reductionType,
      'reduction': instance.reduction,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
