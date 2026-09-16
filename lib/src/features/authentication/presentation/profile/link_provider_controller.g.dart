// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_provider_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LinkProviderController)
final linkProviderControllerProvider = LinkProviderControllerProvider._();

final class LinkProviderControllerProvider
    extends $AsyncNotifierProvider<LinkProviderController, void> {
  LinkProviderControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'linkProviderControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$linkProviderControllerHash();

  @$internal
  @override
  LinkProviderController create() => LinkProviderController();
}

String _$linkProviderControllerHash() =>
    r'95de019cef3b99e82d7a72eab7e5c6426a24d27d';

abstract class _$LinkProviderController extends $AsyncNotifier<void> {
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
