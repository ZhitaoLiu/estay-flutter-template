

import 'package:estay_flutter_template/model/home_model.dart';
import 'package:estay_flutter_template/services/home_request.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {

  List<BannerModel> _banners = [];
  List<BannerModel> get banners => _banners;

  HomeViewModel() {
    getBannerAction();
  }

  void getBannerAction() async {
    final banners = await HomeRequest.getBannerData();
    _banners = banners;
    notifyListeners();
  }

}