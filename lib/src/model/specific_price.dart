import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'specific_price.g.dart';

@JsonSerializable()
class SpecificPriceResponse extends Equatable {
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
  bool get stringify => true;
}

@JsonSerializable()
class SpecificPrice extends Equatable {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_product', fromJson: stringToInt)
  final int productId;

  @JsonKey(name: 'reduction_type')
  final String reductionType;

  @JsonKey(name: 'reduction', fromJson: stringToDouble)
  final double reduction;

  @JsonKey(name: 'from', fromJson: stringToDate)
  final DateTime from;

  @JsonKey(name: 'to', fromJson: stringToDate)
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
  bool get stringify => true;
}
