// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return BannerModel(
    name: json['name'] as String,
    url: json['url'] as String,
    sortOrder: json['sort_order'] as int,
    imageSrc: json['image_src'] as String,
  );
}

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'sort_order': instance.sortOrder,
      'image_src': instance.imageSrc,
    };
