// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_code_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectCodeHash() => r'c1b0da2e9a54724d658585d3bf9a6e11dbcae15a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CollectCode
    extends BuildlessAutoDisposeAsyncNotifier<CollectCodeModel> {
  late final int ccIdx;

  FutureOr<CollectCodeModel> build(
    int ccIdx,
  );
}

/// See also [CollectCode].
@ProviderFor(CollectCode)
const collectCodeProvider = CollectCodeFamily();

/// See also [CollectCode].
class CollectCodeFamily extends Family<AsyncValue<CollectCodeModel>> {
  /// See also [CollectCode].
  const CollectCodeFamily();

  /// See also [CollectCode].
  CollectCodeProvider call(
    int ccIdx,
  ) {
    return CollectCodeProvider(
      ccIdx,
    );
  }

  @override
  CollectCodeProvider getProviderOverride(
    covariant CollectCodeProvider provider,
  ) {
    return call(
      provider.ccIdx,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'collectCodeProvider';
}

/// See also [CollectCode].
class CollectCodeProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CollectCode, CollectCodeModel> {
  /// See also [CollectCode].
  CollectCodeProvider(
    int ccIdx,
  ) : this._internal(
          () => CollectCode()..ccIdx = ccIdx,
          from: collectCodeProvider,
          name: r'collectCodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectCodeHash,
          dependencies: CollectCodeFamily._dependencies,
          allTransitiveDependencies:
              CollectCodeFamily._allTransitiveDependencies,
          ccIdx: ccIdx,
        );

  CollectCodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ccIdx,
  }) : super.internal();

  final int ccIdx;

  @override
  FutureOr<CollectCodeModel> runNotifierBuild(
    covariant CollectCode notifier,
  ) {
    return notifier.build(
      ccIdx,
    );
  }

  @override
  Override overrideWith(CollectCode Function() create) {
    return ProviderOverride(
      origin: this,
      override: CollectCodeProvider._internal(
        () => create()..ccIdx = ccIdx,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ccIdx: ccIdx,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CollectCode, CollectCodeModel>
      createElement() {
    return _CollectCodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectCodeProvider && other.ccIdx == ccIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ccIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CollectCodeRef on AutoDisposeAsyncNotifierProviderRef<CollectCodeModel> {
  /// The parameter `ccIdx` of this provider.
  int get ccIdx;
}

class _CollectCodeProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CollectCode,
        CollectCodeModel> with CollectCodeRef {
  _CollectCodeProviderElement(super.provider);

  @override
  int get ccIdx => (origin as CollectCodeProvider).ccIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
