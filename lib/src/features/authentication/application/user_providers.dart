import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/features/authentication/domain/user_data.dart';
import 'package:movie_vault/src/features/_shared/shared_providers.dart';

final formValidProvider = NotifierProvider<GenericStateNotifier<bool>, bool>(() => GenericStateNotifier<bool>(() => false));
final emailFieldProvider = NotifierProvider<GenericStateNotifier<String>, String>(() => GenericStateNotifier<String>(() => ''));
final passwordFieldProvider = NotifierProvider<GenericStateNotifier<String>, String>(() => GenericStateNotifier<String>(() => ''));

final userDataRegisterProvider = NotifierProvider<GenericStateNotifier<UserData>, UserData>(
  () => GenericStateNotifier<UserData>(() => UserData(email: '', username: '', name: '', birthday: '')),
);

final usernameProvider = NotifierProvider<GenericStateNotifier<String>, String>(() => GenericStateNotifier<String>(() => ''));
final imageUrlProvider = NotifierProvider<GenericStateNotifier<String>, String>(() => GenericStateNotifier<String>(() => ''));
