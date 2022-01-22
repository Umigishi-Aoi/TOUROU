// Dart imports:
import 'dart:math';

// Project imports:
import '../gen/assets.gen.dart';
import 'toruou_data.dart';

class TourouTestData {
  List<TourouData> tourouTestData;

  TourouTestData._({required this.tourouTestData});

  factory TourouTestData.testData() {
    List<TourouData> testData = [];

    for (int i = 0; i < 100; i++) {
      testData.add(TourouData(
        profileImagePath: Assets.images.iconNoImage.path,
        userName: generateNonce(10),
        userId: generateNonce(8),
        tourouText: generateNonce(Random().nextInt(100)),
        goodNumber: Random().nextInt(100).toString(),
      ));
    }

    return TourouTestData._(tourouTestData: testData);
  }
}

String generateNonce([int length = 32]) {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  final randomStr =
      List.generate(length, (_) => charset[random.nextInt(charset.length)])
          .join();
  return randomStr;
}
