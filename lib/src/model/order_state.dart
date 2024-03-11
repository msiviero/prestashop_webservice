import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:prestashop_webservice/src/model/converter.dart';

part 'order_state.g.dart';

// response for order state
@JsonSerializable()
class OrderStateResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'order_states')
  final List<OrderState> items;

  const OrderStateResponse({
    required this.items,
  });

  factory OrderStateResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStateResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

// entity for order state
@JsonSerializable()
class OrderState extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(
    name: 'delivery',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int delivery;

  @JsonKey(
    name: 'hidden',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int hidden;

  @JsonKey(
    name: 'send_email',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int sendEmail;

  @JsonKey(
    name: 'module_name',
  )
  final String moduleName;

  @JsonKey(
    name: 'invoice',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int invoice;

  @JsonKey(
    name: 'color',
  )
  final String color;

  @JsonKey(
    name: 'logable',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int logable;

  @JsonKey(
    name: 'shipped',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int shipped;

  @JsonKey(
    name: 'paid',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int paid;

  @JsonKey(
    name: 'pdf_delivery',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int pdfDelivery;

  @JsonKey(
    name: 'pdf_invoice',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int pdfInvoice;

  @JsonKey(
    name: 'deleted',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int deleted;

  @JsonKey(
    name: 'name',
  )
  final String name;

  @JsonKey(
    name: 'template',
  )
  final String template;

  OrderState({
    required this.id,
    required this.delivery,
    required this.hidden,
    required this.sendEmail,
    required this.moduleName,
    required this.invoice,
    required this.color,
    required this.logable,
    required this.shipped,
    required this.paid,
    required this.pdfDelivery,
    required this.pdfInvoice,
    required this.deleted,
    required this.name,
    required this.template,
  });

  factory OrderState.fromJson(Map<String, dynamic> json) =>
      _$OrderStateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStateToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
