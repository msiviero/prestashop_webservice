import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'specific_price.g.dart';

@JsonSerializable()
class SpecificPriceResponse {
  @JsonKey(name: 'specific_prices')
  final List<SpecificPrice> specificPrices;

  SpecificPriceResponse({
    required this.specificPrices,
  });

  factory SpecificPriceResponse.fromJson(Map<String, dynamic> json) {
    return _$SpecificPriceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecificPriceResponseToJson(this);
}

@JsonSerializable()
class SpecificPrice {
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

  factory SpecificPrice.fromJson(Map<String, dynamic> json) =>
      _$SpecificPriceFromJson(json);

  SpecificPrice({
    required this.productId,
    required this.reductionType,
    required this.reduction,
    required this.from,
    required this.to,
    required this.id,
  });

  Map<String, dynamic> toJson() => _$SpecificPriceToJson(this);

  @override
  String toString() {
    return "SpecificPrice{productId=$productId, type=$reductionType, reduction=$reduction, from=$from to=$to}";
  }
}
