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
      wholeSalePrice:
          JsonDouble.fromJson(json['original_wholesale_price'] as String),
      price: JsonDouble.fromJson(json['product_price'] as String),
      quantity: JsonInt.fromJson(json['product_quantity'] as String),
      id: json['id'] as int,
      productId: JsonInt.fromJson(json['product_id'] as String),
      orderId: JsonInt.fromJson(json['id_order'] as String),
      productName: json['product_name'] as String,
      productRef: json['product_reference'] as String,
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': JsonInt.toJson(instance.productId),
      'id_order': JsonInt.toJson(instance.orderId),
      'product_name': instance.productName,
      'product_reference': instance.productRef,
      'product_price': JsonDouble.toJson(instance.price),
      'original_wholesale_price': JsonDouble.toJson(instance.wholeSalePrice),
      'product_quantity': JsonInt.toJson(instance.quantity),
    };
