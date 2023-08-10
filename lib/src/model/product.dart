import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductsResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'products')
  final List<Product> items;

  ProductsResponse({
    required this.items,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class Product extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'active')
  final String active;

  @JsonKey(name: 'name')
  final String title;

  @JsonKey(
    name: 'id_manufacturer',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int manufacturerId;

  @JsonKey(name: 'description_short')
  final String description;

  @JsonKey(
    name: 'price',
    fromJson: JsonDouble.fromJson,
    toJson: JsonDouble.toJson,
  )
  final double price;

  @JsonKey(name: 'id_category_default')
  final String categoryId;

  @JsonKey(name: 'ean13')
  final String ean13;

  @JsonKey(name: 'mpn')
  final String mpn;

  @JsonKey(name: 'reference')
  final String reference;

  @JsonKey(
    name: 'date_upd',
    fromJson: JsonDate.fromJson,
    toJson: JsonDate.toJson,
  )
  final DateTime lastUpdate;

  Product({
    required this.title,
    required this.ean13,
    required this.mpn,
    required this.reference,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.id,
    required this.active,
    required this.manufacturerId,
    required this.lastUpdate,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
