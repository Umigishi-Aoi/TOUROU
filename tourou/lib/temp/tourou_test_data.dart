// Project imports:
import '../gen/assets.gen.dart';
import 'toruou_data.dart';

class TourouTestData {
  List<TourouData> tourouTestData;

  TourouTestData._({required this.tourouTestData});

  factory TourouTestData() {
    List<TourouData> testData = [];

    for (int i = 0; i < 25; i++) {
      testData.add(TourouData(
        profileImagePath: Assets.images.iconNoImage.path,
        userName: 'kenta',
        userId: 'kenta1234',
        tourouText: '今日はいい天気ですね',
        goodNumber: '0',
      ));
      testData.add(TourouData(
        profileImagePath: Assets.images.iconNoImage.path,
        userName: 'kentakentakentakenta',
        userId: 'kenta5678',
        tourouText: '今日はいい天気ですね',
        goodNumber: '1',
      ));
      testData.add(TourouData(
        profileImagePath: Assets.images.iconNoImage.path,
        userName: 'kenta',
        userId: 'kenta9012',
        tourouText:
            '今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね',
        goodNumber: '0',
      ));
      testData.add(TourouData(
        profileImagePath: Assets.images.iconNoImage.path,
        userName: 'kenta',
        userId: 'kenta3456',
        tourouText: '今日はいい天気ですね',
        goodNumber: '5000',
      ));
    }

    return TourouTestData._(tourouTestData: testData);
  }
}
