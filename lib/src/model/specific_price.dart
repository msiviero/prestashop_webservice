import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'specific_price.g.dart';

@JsonSerializable()
class SpecificPriceResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'specific_prices')
  final List<SpecificPrice> items;

  SpecificPriceResponse({
    required this.items,
  });

  factory SpecificPriceResponse.fromJson(Map<String, dynamic> json) {
    return _$SpecificPriceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecificPriceResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class SpecificPrice extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_product', fromJson: JsonInt.fromJson)
  final int productId;

  @JsonKey(name: 'reduction_type')
  final String reductionType;

  @JsonKey(name: 'reduction', fromJson: JsonDouble.fromJson)
  final double reduction;

  @JsonKey(name: 'from', fromJson: JsonDate.fromJson)
  final DateTime from;

  @JsonKey(name: 'to', fromJson: JsonDate.fromJson)
  final DateTime to;

  SpecificPrice({
    required this.productId,
    required this.reductionType,
    required this.reduction,
    required this.from,
    required this.to,
    required this.id,
  });

  factory SpecificPrice.fromJson(Map<String, dynamic> json) =>
      _$SpecificPriceFromJson(json);

  Map<String, dynamic> toJson() => _$SpecificPriceToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
