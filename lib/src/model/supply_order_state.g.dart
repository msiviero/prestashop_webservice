// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply_order_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyOrderStateResponse _$SupplyOrderStateResponseFromJson(
        Map<String, dynamic> json) =>
    SupplyOrderStateResponse(
      items: (json['supply_order_states'] as List<dynamic>)
          .map((e) => SupplyOrderState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SupplyOrderStateResponseToJson(
        SupplyOrderStateResponse instance) =>
    <String, dynamic>{
      'supply_order_states': instance.items,
    };

SupplyOrderState _$SupplyOrderStateFromJson(Map<String, dynamic> json) =>
    SupplyOrderState(
      id: json['id'] as int,
      deliveryNote: JsonInt.fromJson(json['delivery_note'] as String),
      editable: JsonInt.fromJson(json['editable'] as String),
      receiptState: JsonInt.fromJson(json['receipt_state'] as String),
      pendingReceipt: JsonInt.fromJson(json['pending_receipt'] as String),
      enclosed: JsonInt.fromJson(json['enclosed'] as String),
      color: json['color'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SupplyOrderStateToJson(SupplyOrderState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'delivery_note': JsonInt.toJson(instance.deliveryNote),
      'editable': JsonInt.toJson(instance.editable),
      'receipt_state': JsonInt.toJson(instance.receiptState),
      'pending_receipt': JsonInt.toJson(instance.pendingReceipt),
      'enclosed': JsonInt.toJson(instance.enclosed),
      'color': instance.color,
      'name': instance.name,
    };
