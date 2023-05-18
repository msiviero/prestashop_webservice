import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'order.g.dart';

@JsonSerializable()
class OrderResponse {
  @JsonKey(name: 'orders')
  final List<Order> orders;

  const OrderResponse({
    required this.orders,
  });

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);
}

@JsonSerializable()
class Order {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_customer', fromJson: stringToInt)
  final int customerId;

  @JsonKey(name: 'date_add', fromJson: stringToDate)
  final DateTime date;

  @JsonKey(name: 'payment')
  final String payment;

  @JsonKey(name: 'shipping_number')
  final String shippingNumber;

  @JsonKey(name: 'total_products', fromJson: stringToDouble)
  final double totalProducts;

  @JsonKey(name: 'total_shipping', fromJson: stringToDouble)
  final double totalShipping;

  @JsonKey(name: 'total_discounts', fromJson: stringToDouble)
  final double totalDiscounts;

  @JsonKey(name: 'total_paid', fromJson: stringToDouble)
  final double totalPaid;

  @JsonKey(name: 'reference')
  final String reference;

  @JsonKey(name: 'note')
  final String? note;

  const Order({
    required this.id,
    required this.customerId,
    required this.date,
    required this.payment,
    required this.totalProducts,
    required this.totalDiscounts,
    required this.totalPaid,
    required this.totalShipping,
    required this.reference,
    required this.shippingNumber,
    required this.note,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class OrderDetailsResponse {
  @JsonKey(name: 'order_details')
  final List<OrderDetails> items;

  const OrderDetailsResponse({
    required this.items,
  });

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);
}

@JsonSerializable()
class OrderDetails {
  @JsonKey(name: 'product_price', fromJson: stringToDouble)
  final double price;

  @JsonKey(name: 'original_wholesale_price', fromJson: stringToDouble)
  final double wholeSalePrice;

  @JsonKey(name: 'product_quantity', fromJson: stringToInt)
  final int quantity;

  OrderDetails({
    required this.wholeSalePrice,
    required this.price,
    required this.quantity,
  });

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);
}
