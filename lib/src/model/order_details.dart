import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:prestashop_webservice/src/model/converter.dart';

part 'order_details.g.dart';

// response for order details
@JsonSerializable()
class OrderDetailsResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'order_details')
  final List<OrderDetail> items;

  const OrderDetailsResponse({
    required this.items,
  });

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

// entity for specific detail
@JsonSerializable()
class OrderDetail extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(
    name: 'product_id',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int productId;

  @JsonKey(
    name: 'id_order',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int orderId;

  @JsonKey(name: 'product_name')
  final String productName;

  @JsonKey(name: 'product_reference')
  final String productRef;

  @JsonKey(
    name: 'product_price',
    fromJson: JsonDouble.fromJson,
    toJson: JsonDouble.toJson,
  )
  final double price;

  @JsonKey(
    name: 'original_wholesale_price',
    fromJson: JsonDouble.fromJson,
    toJson: JsonDouble.toJson,
  )
  final double wholeSalePrice;

  @JsonKey(
    name: 'product_quantity',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int quantity;

  OrderDetail({
    required this.wholeSalePrice,
    required this.price,
    required this.quantity,
    required this.id,
    required this.productId,
    required this.orderId,
    required this.productName,
    required this.productRef,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);

  @override
  List<Object?> get props => [orderId, productId];

  @override
  String toString() => _encoder.convert(toJson());
}
