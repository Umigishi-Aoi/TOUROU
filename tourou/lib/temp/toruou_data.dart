class TourouData {
  final String profileImagePath;
  final String userName;
  final String userId;
  final String tourouText;
  final String? tourouImagePath;
  final String goodNumber;

  TourouData(
      {required this.profileImagePath,
      required this.userName,
      required this.userId,
      required this.tourouText,
      this.tourouImagePath,
      required this.goodNumber});
}
