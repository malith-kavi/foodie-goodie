class UserModel {
  final String uid;
  UserModel({required this.uid});
}

class GetUserDetails {
  late String userName;
  late String profilePicture;
  late String age;
  late String hight;
  late String weight;

  GetUserDetails(
      {required this.userName,
      required this.profilePicture,
      required this.age,
      required this.hight,
      required this.weight});
}
