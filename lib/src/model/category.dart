import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoriesResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'categories')
  final List<Category> items;

  CategoriesResponse({
    required this.items,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoriesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class Category extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'level_depth')
  final String depth;

  @JsonKey(name: 'id_parent')
  final String parentId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'active')
  final String active;

  Category({
    required this.id,
    required this.depth,
    required this.parentId,
    required this.name,
    required this.active,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
