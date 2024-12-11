import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/features/authentication/domain/user_data.dart';

final formValidProvider = StateProvider<bool>((ref) => false);
final emailFieldProvider = StateProvider<String>((ref) => '');
final passwordFieldProvider = StateProvider<String>((ref) => '');

final userDataRegisterProvider = StateProvider<UserData>(
  (ref) => UserData(email: '', username: '', name: '', birthday: ''),
);

final usernameProvider = StateProvider<String>((ref) => '');
final imageUrlProvider = StateProvider<String>((ref) => '');
