// Project imports:
import 'ad_helper_abs.dart';

class TestAdHelper implements BaseAdHelper {
  TestAdHelper() {}

  String get bannerAdUnitId {
    print('test mode');
    return '';
  }
}

BaseAdHelper getHelper() => TestAdHelper();
