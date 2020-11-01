
import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BannerModel {

  String name;
  String url;
  @JsonKey(name:'sort_order')
  int sortOrder;
  @JsonKey(name:'image_src')
  String imageSrc;

  BannerModel({this.name, this.url, this.sortOrder, this.imageSrc});

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);

}