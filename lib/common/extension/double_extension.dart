

import 'package:estay_flutter_template/common/fit/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return SizeFit.setPx(this);
  }

  double get rpx {
    return SizeFit.setRpx(this);
  }
}