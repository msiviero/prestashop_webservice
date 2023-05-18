import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'order_details.g.dart';

@JsonSerializable()
class OrderDetailsResponse {
  @JsonKey(name: 'order_details')
  final List<OrderDetail> orderDetails;

  const OrderDetailsResponse({
    required this.orderDetails,
  });

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);
}

@JsonSerializable()
class OrderDetail {
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
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);
}
