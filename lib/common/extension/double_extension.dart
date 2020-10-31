

import 'package:estay_flutter_template/common/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return ESSizeFit.setPx(this);
  }

  double get rpx {
    return ESSizeFit.setRpx(this);
  }
}