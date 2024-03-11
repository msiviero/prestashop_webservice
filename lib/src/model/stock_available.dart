import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_available.g.dart';

//https://store.ambers.place/api/stock_availables?ws_key=YZUUQ8DQYK2P523G78SLX557QZU5JV3P&output_format=JSON&display=full

@JsonSerializable()
class StockAvailableResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'categories')
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

@JsonSerializable()
class StockAvailable extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  StockAvailable({
    required this.id,
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
