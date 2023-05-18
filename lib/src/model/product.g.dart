// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    ProductsResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsResponseToJson(ProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      title: json['name'] as String,
      ean13: json['ean13'] as String,
      mpn: json['mpn'] as String,
      description: json['description_short'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: json['id_category_default'] as String,
      id: json['id'] as int,
      active: json['active'] as String,
      manufacturerId: json['id_manufacturer'] as String,
      lastUpdate: DateTime.parse(json['date_upd'] as String),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'name': instance.title,
      'id_manufacturer': instance.manufacturerId,
      'description_short': instance.description,
      'price': instance.price,
      'id_category_default': instance.categoryId,
      'ean13': instance.ean13,
      'mpn': instance.mpn,
      'date_upd': instance.lastUpdate.toIso8601String(),
    };
