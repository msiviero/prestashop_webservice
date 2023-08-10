import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:prestashop_webservice/src/model/converter.dart';

part 'supply_order_state.g.dart';

@JsonSerializable()
class SupplyOrderStateResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'supply_order_states')
  final List<SupplyOrderState> items;

  const SupplyOrderStateResponse({
    required this.items,
  });

  factory SupplyOrderStateResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplyOrderStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyOrderStateResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class SupplyOrderState extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(
    name: 'delivery_note',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int deliveryNote;

  @JsonKey(
    name: 'editable',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int editable;

  @JsonKey(
    name: 'receipt_state',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int receiptState;

  @JsonKey(
    name: 'pending_receipt',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int pendingReceipt;

  @JsonKey(
    name: 'enclosed',
    fromJson: JsonInt.fromJson,
    toJson: JsonInt.toJson,
  )
  final int enclosed;

  @JsonKey(
    name: 'color',
  )
  final String color;

  @JsonKey(
    name: 'name',
  )
  final String name;

  SupplyOrderState({
    required this.id,
    required this.deliveryNote,
    required this.editable,
    required this.receiptState,
    required this.pendingReceipt,
    required this.enclosed,
    required this.color,
    required this.name,
  });

  factory SupplyOrderState.fromJson(Map<String, dynamic> json) =>
      _$SupplyOrderStateFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyOrderStateToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
