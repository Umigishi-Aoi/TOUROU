// Project imports:
import '../gen/assets.gen.dart';

class TourouData {
  TourouData(
      {required this.profileImagePath,
      required this.userName,
      required this.userId,
      required this.tourouText,
      this.tourouImagePath,
      required this.goodNumber});

  factory TourouData.profile() {
    return TourouData(
      profileImagePath: Assets.images.iconNoImage.path,
      userName: 'kenta',
      userId: 'kenta3456',
      tourouText:
          '私はFlutterが大好きです。私はFlutterが大好きです。私はFlutterが大好きです。私はFlutterが大好きです。私はFlutterがÏ大好きです。私はFlutterが大好きです。私はFlutterが大好きです。',
      goodNumber: '0',
    );
  }

  final String profileImagePath;
  final String userName;
  final String userId;
  final String tourouText;
  final String? tourouImagePath;
  final String goodNumber;
}
