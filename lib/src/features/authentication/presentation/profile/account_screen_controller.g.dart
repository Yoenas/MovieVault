// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountScreenController)
final accountScreenControllerProvider = AccountScreenControllerProvider._();

final class AccountScreenControllerProvider
    extends $AsyncNotifierProvider<AccountScreenController, void> {
  AccountScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountScreenControllerHash();

  @$internal
  @override
  AccountScreenController create() => AccountScreenController();
}

String _$accountScreenControllerHash() =>
    r'1f8cc2af15aec8e76a264924fa845e2dbe03b87b';

abstract class _$AccountScreenController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
