// To parse this JSON data, do
//
//     final productsResponse = productsResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'package:revision/features/home/domain/entities/product_entity.dart';

part 'products_response.g.dart';

ProductsResponse productsResponseFromJson(String str) =>
    ProductsResponse.fromJson(json.decode(str));

String productsResponseToJson(ProductsResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class ProductsResponse {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @JsonKey(name: "data")
  final List<ProductDto>? productList;

  ProductsResponse({this.results, this.metadata, this.productList});

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);
}

@JsonSerializable()
class Metadata {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;
  @JsonKey(name: "nextPage")
  final int? nextPage;

  Metadata({this.currentPage, this.numberOfPages, this.limit, this.nextPage});

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class ProductDto {
  @JsonKey(name: "sold")
  final int? sold;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "subcategory")
  final List<Subcategory>? subcategory;
  @JsonKey(name: "ratingsQuantity")
  final int? ratingsQuantity;
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "quantity")
  final int? quantity;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "imageCover")
  final String? imageCover;
  @JsonKey(name: "category")
  final Category? category;
  @JsonKey(name: "brand")
  final Brand? brand;
  @JsonKey(name: "ratingsAverage")
  final double? ratingsAverage;
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @JsonKey(name: "id")
  final String? productDtoId;
  @JsonKey(name: "priceAfterDiscount")
  final int? priceAfterDiscount;
  @JsonKey(name: "availableColors")
  final List<dynamic>? availableColors;

  ProductDto({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.id,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.productDtoId,
    this.priceAfterDiscount,
    this.availableColors,
  });

  ProductEntity toEntity() {
    return ProductEntity(
      id: id ?? "",
      title: title ?? "",
      description: description ?? "",
      price: (price ?? 0.0).toDouble(),
      imageUrl: imageCover ?? "",
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}

@JsonSerializable()
class Brand {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  Brand({this.id, this.name, this.slug, this.image});

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "_id")
  final Id? id;
  @JsonKey(name: "name")
  final Name? name;
  @JsonKey(name: "slug")
  final Slug? slug;
  @JsonKey(name: "image")
  final String? image;

  Category({this.id, this.name, this.slug, this.image});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

enum Id {
  @JsonValue("6439d2d167d9aa4ca970649f")
  THE_6439_D2_D167_D9_AA4_CA970649_F,
  @JsonValue("6439d58a0049ad0b52b9003f")
  THE_6439_D58_A0049_AD0_B52_B9003_F,
  @JsonValue("6439d5b90049ad0b52b90048")
  THE_6439_D5_B90049_AD0_B52_B90048,
}

final idValues = EnumValues({
  "6439d2d167d9aa4ca970649f": Id.THE_6439_D2_D167_D9_AA4_CA970649_F,
  "6439d58a0049ad0b52b9003f": Id.THE_6439_D58_A0049_AD0_B52_B9003_F,
  "6439d5b90049ad0b52b90048": Id.THE_6439_D5_B90049_AD0_B52_B90048,
});

enum Name {
  @JsonValue("Electronics")
  ELECTRONICS,
  @JsonValue("Men's Fashion")
  MEN_S_FASHION,
  @JsonValue("Women's Fashion")
  WOMEN_S_FASHION,
}

final nameValues = EnumValues({
  "Electronics": Name.ELECTRONICS,
  "Men's Fashion": Name.MEN_S_FASHION,
  "Women's Fashion": Name.WOMEN_S_FASHION,
});

enum Slug {
  @JsonValue("electronics")
  ELECTRONICS,
  @JsonValue("men's-fashion")
  MEN_S_FASHION,
  @JsonValue("women's-fashion")
  WOMEN_S_FASHION,
}

final slugValues = EnumValues({
  "electronics": Slug.ELECTRONICS,
  "men's-fashion": Slug.MEN_S_FASHION,
  "women's-fashion": Slug.WOMEN_S_FASHION,
});

@JsonSerializable()
class Subcategory {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "category")
  final Id? category;

  Subcategory({this.id, this.name, this.slug, this.category});

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
