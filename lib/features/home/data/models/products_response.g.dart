// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    ProductsResponse(
      results: (json['results'] as num?)?.toInt(),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      productList: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsResponseToJson(ProductsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.metadata,
      'data': instance.productList,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  nextPage: (json['nextPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'numberOfPages': instance.numberOfPages,
  'limit': instance.limit,
  'nextPage': instance.nextPage,
};

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
  sold: (json['sold'] as num?)?.toInt(),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  subcategory: (json['subcategory'] as List<dynamic>?)
      ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
  id: json['_id'] as String?,
  title: json['title'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toInt(),
  imageCover: json['imageCover'] as String?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  brand: json['brand'] == null
      ? null
      : Brand.fromJson(json['brand'] as Map<String, dynamic>),
  ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  productDtoId: json['id'] as String?,
  priceAfterDiscount: (json['priceAfterDiscount'] as num?)?.toInt(),
  availableColors: json['availableColors'] as List<dynamic>?,
);

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'sold': instance.sold,
      'images': instance.images,
      'subcategory': instance.subcategory,
      'ratingsQuantity': instance.ratingsQuantity,
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'quantity': instance.quantity,
      'price': instance.price,
      'imageCover': instance.imageCover,
      'category': instance.category,
      'brand': instance.brand,
      'ratingsAverage': instance.ratingsAverage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.productDtoId,
      'priceAfterDiscount': instance.priceAfterDiscount,
      'availableColors': instance.availableColors,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'image': instance.image,
};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: $enumDecodeNullable(_$IdEnumMap, json['_id']),
  name: $enumDecodeNullable(_$NameEnumMap, json['name']),
  slug: $enumDecodeNullable(_$SlugEnumMap, json['slug']),
  image: json['image'] as String?,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  '_id': _$IdEnumMap[instance.id],
  'name': _$NameEnumMap[instance.name],
  'slug': _$SlugEnumMap[instance.slug],
  'image': instance.image,
};

const _$IdEnumMap = {
  Id.THE_6439_D2_D167_D9_AA4_CA970649_F: '6439d2d167d9aa4ca970649f',
  Id.THE_6439_D58_A0049_AD0_B52_B9003_F: '6439d58a0049ad0b52b9003f',
  Id.THE_6439_D5_B90049_AD0_B52_B90048: '6439d5b90049ad0b52b90048',
};

const _$NameEnumMap = {
  Name.ELECTRONICS: 'Electronics',
  Name.MEN_S_FASHION: "Men's Fashion",
  Name.WOMEN_S_FASHION: "Women's Fashion",
};

const _$SlugEnumMap = {
  Slug.ELECTRONICS: 'electronics',
  Slug.MEN_S_FASHION: "men's-fashion",
  Slug.WOMEN_S_FASHION: "women's-fashion",
};

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  category: $enumDecodeNullable(_$IdEnumMap, json['category']),
);

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'category': _$IdEnumMap[instance.category],
    };
