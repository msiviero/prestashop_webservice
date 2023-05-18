// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificPriceResponse _$SpecificPriceResponseFromJson(
        Map<String, dynamic> json) =>
    SpecificPriceResponse(
      specificPrices: (json['specific_prices'] as List<dynamic>)
          .map((e) => SpecificPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecificPriceResponseToJson(
        SpecificPriceResponse instance) =>
    <String, dynamic>{
      'specific_prices': instance.specificPrices,
    };

SpecificPrice _$SpecificPriceFromJson(Map<String, dynamic> json) =>
    SpecificPrice(
      productId: json['id_product'] as int,
      reductionType: json['reduction_type'] as String,
      reduction: (json['reduction'] as num).toDouble(),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
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
