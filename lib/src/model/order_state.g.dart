// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStateResponse _$OrderStateResponseFromJson(Map<String, dynamic> json) =>
    OrderStateResponse(
      items: (json['order_states'] as List<dynamic>)
          .map((e) => OrderState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderStateResponseToJson(OrderStateResponse instance) =>
    <String, dynamic>{
      'order_states': instance.items,
    };

OrderState _$OrderStateFromJson(Map<String, dynamic> json) => OrderState(
      id: json['id'] as int,
      delivery: JsonInt.fromJson(json['delivery'] as String),
      hidden: JsonInt.fromJson(json['hidden'] as String),
      sendEmail: JsonInt.fromJson(json['send_email'] as String),
      moduleName: json['module_name'] as String,
      invoice: JsonInt.fromJson(json['invoice'] as String),
      color: json['color'] as String,
      logable: JsonInt.fromJson(json['logable'] as String),
      shipped: JsonInt.fromJson(json['shipped'] as String),
      paid: JsonInt.fromJson(json['paid'] as String),
      pdfDelivery: JsonInt.fromJson(json['pdf_delivery'] as String),
      pdfInvoice: JsonInt.fromJson(json['pdf_invoice'] as String),
      deleted: JsonInt.fromJson(json['deleted'] as String),
      name: json['name'] as String,
      template: json['template'] as String,
    );

Map<String, dynamic> _$OrderStateToJson(OrderState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'delivery': JsonInt.toJson(instance.delivery),
      'hidden': JsonInt.toJson(instance.hidden),
      'send_email': JsonInt.toJson(instance.sendEmail),
      'module_name': instance.moduleName,
      'invoice': JsonInt.toJson(instance.invoice),
      'color': instance.color,
      'logable': JsonInt.toJson(instance.logable),
      'shipped': JsonInt.toJson(instance.shipped),
      'paid': JsonInt.toJson(instance.paid),
      'pdf_delivery': JsonInt.toJson(instance.pdfDelivery),
      'pdf_invoice': JsonInt.toJson(instance.pdfInvoice),
      'deleted': JsonInt.toJson(instance.deleted),
      'name': instance.name,
      'template': instance.template,
    };
