import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'order_details.g.dart';

@JsonSerializable()
class OrderDetailsResponse extends Equatable {
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
  bool get stringify => true;
}

@JsonSerializable()
class OrderDetail extends Equatable {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'product_id', fromJson: stringToInt)
  final int productId;

  @JsonKey(name: 'id_order', fromJson: stringToInt)
  final int orderId;

  @JsonKey(name: 'product_name')
  final String productName;

  @JsonKey(name: 'product_reference')
  final String productRef;

  @JsonKey(name: 'product_price', fromJson: stringToDouble)
  final double price;

  @JsonKey(name: 'original_wholesale_price', fromJson: stringToDouble)
  final double wholeSalePrice;

  @JsonKey(name: 'product_quantity', fromJson: stringToInt)
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
  bool get stringify => true;
}
