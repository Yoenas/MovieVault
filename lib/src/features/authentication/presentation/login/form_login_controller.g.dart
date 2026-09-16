// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_login_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FormLoginController)
final formLoginControllerProvider = FormLoginControllerProvider._();

final class FormLoginControllerProvider
    extends $AsyncNotifierProvider<FormLoginController, void> {
  FormLoginControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'formLoginControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$formLoginControllerHash();

  @$internal
  @override
  FormLoginController create() => FormLoginController();
}

String _$formLoginControllerHash() =>
    r'5b206e28fea63433205d9033c098cb1318d6dc05';

abstract class _$FormLoginController extends $AsyncNotifier<void> {
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
