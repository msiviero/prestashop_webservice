import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'stock_available.g.dart';

// response for available stocks
@JsonSerializable()
class StockAvailableResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'stock_availables')
  final List<StockAvailable> items;

  StockAvailableResponse({
    required this.items,
  });

  factory StockAvailableResponse.fromJson(Map<String, dynamic> json) {
    return _$StockAvailableResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StockAvailableResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

// entity for available stocks
@JsonSerializable()
class StockAvailable extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_product', fromJson: JsonInt.fromJson)
  final int productId;

  @JsonKey(name: 'quantity', fromJson: JsonInt.fromJson)
  final int quantity;

  StockAvailable({
    required this.id,
    required this.productId,
    required this.quantity,
  });

  factory StockAvailable.fromJson(Map<String, dynamic> json) {
    return _$StockAvailableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StockAvailableToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
