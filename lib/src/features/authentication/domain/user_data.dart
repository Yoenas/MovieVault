import 'user_response.dart';

class UserData {
  const UserData({
    required this.email,
    required this.username,
    required this.name,
    required this.birthday,
    this.imageUrl = '',
  });

  factory UserData.from(UserResponse user) {
    return UserData(
      email: user.email,
      username: user.username,
      name: user.name,
      birthday: user.birthday,
      imageUrl: user.imageUrl ?? '',
    );
  }

  Map<String, dynamic> toMap() => UserResponse(
        email: email,
        username: username,
        name: name,
        birthday: birthday,
        imageUrl: imageUrl,
      ).toJson();

  final String email;
  final String username;
  final String name;
  final String birthday;
  final String imageUrl;
}
