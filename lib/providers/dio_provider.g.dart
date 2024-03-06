// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$publicDioHash() => r'04352c3da5e96fe29b8d0083057bea673519cdd3';

/// See also [publicDio].
@ProviderFor(publicDio)
final publicDioProvider = AutoDisposeProvider<Dio>.internal(
  publicDio,
  name: r'publicDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$publicDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PublicDioRef = AutoDisposeProviderRef<Dio>;
String _$privateDioHash() => r'27843cfb965e9769455827050a4c279d501a339b';

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

/// See also [privateDio].
@ProviderFor(privateDio)
const privateDioProvider = PrivateDioFamily();

/// See also [privateDio].
class PrivateDioFamily extends Family<Dio> {
  /// See also [privateDio].
  const PrivateDioFamily();

  /// See also [privateDio].
  PrivateDioProvider call(
    String token,
  ) {
    return PrivateDioProvider(
      token,
    );
  }

  @override
  PrivateDioProvider getProviderOverride(
    covariant PrivateDioProvider provider,
  ) {
    return call(
      provider.token,
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
  String? get name => r'privateDioProvider';
}

/// See also [privateDio].
class PrivateDioProvider extends AutoDisposeProvider<Dio> {
  /// See also [privateDio].
  PrivateDioProvider(
    String token,
  ) : this._internal(
          (ref) => privateDio(
            ref as PrivateDioRef,
            token,
          ),
          from: privateDioProvider,
          name: r'privateDioProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$privateDioHash,
          dependencies: PrivateDioFamily._dependencies,
          allTransitiveDependencies:
              PrivateDioFamily._allTransitiveDependencies,
          token: token,
        );

  PrivateDioProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final String token;

  @override
  Override overrideWith(
    Dio Function(PrivateDioRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PrivateDioProvider._internal(
        (ref) => create(ref as PrivateDioRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Dio> createElement() {
    return _PrivateDioProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PrivateDioProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PrivateDioRef on AutoDisposeProviderRef<Dio> {
  /// The parameter `token` of this provider.
  String get token;
}

class _PrivateDioProviderElement extends AutoDisposeProviderElement<Dio>
    with PrivateDioRef {
  _PrivateDioProviderElement(super.provider);

  @override
  String get token => (origin as PrivateDioProvider).token;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
