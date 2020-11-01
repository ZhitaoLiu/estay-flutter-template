import 'package:dio/dio.dart';
import 'package:estay_flutter_template/model/home_model.dart';

import 'http_request.dart';
import 'http_api.dart';

class HomeRequest {

  static Future<List<BannerModel>> getBannerData() async {
    const params = {
      "client": 3
    };

    final result = await HttpRequest.request(API.bannerAPI, method: 'post', params: params,);

    // json to model
    List<BannerModel> banners = [];
    final bannerArray = result['data'];
    for (var json in bannerArray) {
      banners.add(BannerModel.fromJson(json));
    }

    return banners;
  }

}