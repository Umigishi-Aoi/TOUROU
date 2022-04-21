// ignore_for_file: lines_longer_than_80_chars

// Project imports:
import '../gen/assets.gen.dart';
import 'toruou_data.dart';

class TourouTestData {
  factory TourouTestData() {
    final testData = <TourouData>[];

    for (var i = 0; i < 25; i++) {
      testData
        ..add(
          TourouData(
            id: 'normal$i',
            profileImagePath: Assets.images.iconNoImage.path,
            userName: 'kenta',
            userId: 'kenta1234',
            tourouText: '今日はいい天気ですね',
            goodNumber: '0',
          ),
        )
        ..add(
          TourouData(
            id: 'name_long$i',
            profileImagePath: Assets.images.iconNoImage.path,
            userName: 'kentakentakentakenta',
            userId: 'kenta5678',
            tourouText: '今日はいい天気ですね',
            goodNumber: '1',
          ),
        )
        ..add(
          TourouData(
            id: 'text_long$i',
            profileImagePath: Assets.images.iconNoImage.path,
            userName: 'kenta',
            userId: 'kenta9012',
            tourouText:
                '今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね今日はいい天気ですね',
            goodNumber: '0',
          ),
        )
        ..add(
          TourouData(
            id: 'good_many$i',
            profileImagePath: Assets.images.iconNoImage.path,
            userName: 'kenta',
            userId: 'kenta3456',
            tourouText: '今日はいい天気ですね',
            goodNumber: '5000',
          ),
        );
    }

    return TourouTestData._(tourouTestData: testData);
  }

  TourouTestData._({required this.tourouTestData});

  List<TourouData> tourouTestData;
}
