// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      customerId: stringToInt(json['id_customer'] as String),
      date: stringToDate(json['date_add'] as String),
      payment: json['payment'] as String,
      totalProducts: stringToDouble(json['total_products'] as String),
      totalDiscounts: stringToDouble(json['total_discounts'] as String),
      totalPaid: stringToDouble(json['total_paid'] as String),
      totalShipping: stringToDouble(json['total_shipping'] as String),
      reference: json['reference'] as String,
      shippingNumber: json['shipping_number'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'id_customer': instance.customerId,
      'date_add': instance.date.toIso8601String(),
      'payment': instance.payment,
      'shipping_number': instance.shippingNumber,
      'total_products': instance.totalProducts,
      'total_shipping': instance.totalShipping,
      'total_discounts': instance.totalDiscounts,
      'total_paid': instance.totalPaid,
      'reference': instance.reference,
      'note': instance.note,
    };

OrderDetailsResponse _$OrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponse(
      items: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'order_details': instance.items,
    };

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
      wholeSalePrice:
          stringToDouble(json['original_wholesale_price'] as String),
      price: stringToDouble(json['product_price'] as String),
      quantity: stringToInt(json['product_quantity'] as String),
    );

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'product_price': instance.price,
      'original_wholesale_price': instance.wholeSalePrice,
      'product_quantity': instance.quantity,
    };
