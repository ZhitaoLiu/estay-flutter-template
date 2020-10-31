import 'package:estay_flutter_template/common/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return ESSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return ESSizeFit.setRpx(this.toDouble());
  }
}