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
      customerId: JsonInt.fromJson(json['id_customer'] as String),
      date: JsonDate.fromJson(json['date_add'] as String),
      payment: json['payment'] as String,
      totalProducts: JsonDouble.fromJson(json['total_products'] as String),
      totalDiscounts: JsonDouble.fromJson(json['total_discounts'] as String),
      totalPaid: JsonDouble.fromJson(json['total_paid'] as String),
      totalShipping: JsonDouble.fromJson(json['total_shipping'] as String),
      reference: json['reference'] as String,
      shippingNumber: json['shipping_number'] as String,
      note: json['note'] as String?,
      associations: json['associations'] == null
          ? null
          : Associations.fromJson(json['associations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'id_customer': JsonInt.toJson(instance.customerId),
      'date_add': JsonDate.toJson(instance.date),
      'payment': instance.payment,
      'shipping_number': instance.shippingNumber,
      'total_products': JsonDouble.toJson(instance.totalProducts),
      'total_shipping': JsonDouble.toJson(instance.totalShipping),
      'total_discounts': JsonDouble.toJson(instance.totalDiscounts),
      'total_paid': JsonDouble.toJson(instance.totalPaid),
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
      productId: JsonInt.fromJson(json['product_id'] as String),
      quantity: JsonInt.fromJson(json['product_quantity'] as String),
      productRef: json['product_reference'] as String,
      productName: json['product_name'] as String,
      price: JsonDouble.fromJson(json['product_price'] as String),
      id: JsonInt.fromJson(json['id'] as String),
    );

Map<String, dynamic> _$OrderRowToJson(OrderRow instance) => <String, dynamic>{
      'id': JsonInt.toJson(instance.id),
      'product_id': JsonInt.toJson(instance.productId),
      'product_quantity': JsonInt.toJson(instance.quantity),
      'product_reference': instance.productRef,
      'product_name': instance.productName,
      'product_price': JsonDouble.toJson(instance.price),
    };
