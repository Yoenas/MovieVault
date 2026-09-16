// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OAuthController)
final oAuthControllerProvider = OAuthControllerProvider._();

final class OAuthControllerProvider
    extends $AsyncNotifierProvider<OAuthController, void> {
  OAuthControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'oAuthControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$oAuthControllerHash();

  @$internal
  @override
  OAuthController create() => OAuthController();
}

String _$oAuthControllerHash() => r'286926a2cb2cac209166eea597ee257915fb1a91';

abstract class _$OAuthController extends $AsyncNotifier<void> {
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
