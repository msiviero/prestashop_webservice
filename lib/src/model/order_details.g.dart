// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponse _$OrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponse(
      items: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'order_details': instance.items,
    };

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail(
      wholeSalePrice: (json['original_wholesale_price'] as num).toDouble(),
      price: (json['product_price'] as num).toDouble(),
      quantity: json['product_quantity'] as int,
      id: json['id'] as int,
      productId: json['product_id'] as int,
      orderId: json['id_order'] as int,
      productName: json['product_name'] as String,
      productRef: json['product_reference'] as String,
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'id_order': instance.orderId,
      'product_name': instance.productName,
      'product_reference': instance.productRef,
      'product_price': instance.price,
      'original_wholesale_price': instance.wholeSalePrice,
      'product_quantity': instance.quantity,
    };
