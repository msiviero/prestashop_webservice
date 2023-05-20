// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      items: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'orders': instance.items,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      customerId: json['id_customer'] as int,
      date: stringToDate(json['date_add'] as String),
      payment: json['payment'] as String,
      totalProducts: (json['total_products'] as num).toDouble(),
      totalDiscounts: (json['total_discounts'] as num).toDouble(),
      totalPaid: (json['total_paid'] as num).toDouble(),
      totalShipping: (json['total_shipping'] as num).toDouble(),
      reference: json['reference'] as String,
      shippingNumber: json['shipping_number'] as String,
      note: json['note'] as String?,
      associations: json['associations'] == null
          ? null
          : Associations.fromJson(json['associations'] as Map<String, dynamic>),
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
      'associations': instance.associations,
    };

Associations _$AssociationsFromJson(Map<String, dynamic> json) => Associations(
      orderRows: (json['order_rows'] as List<dynamic>)
          .map((e) => OrderRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssociationsToJson(Associations instance) =>
    <String, dynamic>{
      'order_rows': instance.orderRows,
    };

OrderRow _$OrderRowFromJson(Map<String, dynamic> json) => OrderRow(
      productId: json['product_id'] as int,
      quantity: json['product_quantity'] as int,
      productRef: json['product_reference'] as String,
      productName: json['product_name'] as String,
      price: (json['product_price'] as num).toDouble(),
      id: json['id'] as int,
    );

Map<String, dynamic> _$OrderRowToJson(OrderRow instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_quantity': instance.quantity,
      'product_reference': instance.productRef,
      'product_name': instance.productName,
      'product_price': instance.price,
    };
