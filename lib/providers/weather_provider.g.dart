// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherHash() => r'f43701a5fb4a4fb8a7dc216ccccb3fd7624481f6';

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

abstract class _$Weather extends BuildlessAutoDisposeNotifier<WeatherModel> {
  late final int diIdx;

  WeatherModel build(
    int diIdx,
  );
}

/// See also [Weather].
@ProviderFor(Weather)
const weatherProvider = WeatherFamily();

/// See also [Weather].
class WeatherFamily extends Family<WeatherModel> {
  /// See also [Weather].
  const WeatherFamily();

  /// See also [Weather].
  WeatherProvider call(
    int diIdx,
  ) {
    return WeatherProvider(
      diIdx,
    );
  }

  @override
  WeatherProvider getProviderOverride(
    covariant WeatherProvider provider,
  ) {
    return call(
      provider.diIdx,
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
  String? get name => r'weatherProvider';
}

/// See also [Weather].
class WeatherProvider
    extends AutoDisposeNotifierProviderImpl<Weather, WeatherModel> {
  /// See also [Weather].
  WeatherProvider(
    int diIdx,
  ) : this._internal(
          () => Weather()..diIdx = diIdx,
          from: weatherProvider,
          name: r'weatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherHash,
          dependencies: WeatherFamily._dependencies,
          allTransitiveDependencies: WeatherFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  WeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diIdx,
  }) : super.internal();

  final int diIdx;

  @override
  WeatherModel runNotifierBuild(
    covariant Weather notifier,
  ) {
    return notifier.build(
      diIdx,
    );
  }

  @override
  Override overrideWith(Weather Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherProvider._internal(
        () => create()..diIdx = diIdx,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diIdx: diIdx,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Weather, WeatherModel> createElement() {
    return _WeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherRef on AutoDisposeNotifierProviderRef<WeatherModel> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _WeatherProviderElement
    extends AutoDisposeNotifierProviderElement<Weather, WeatherModel>
    with WeatherRef {
  _WeatherProviderElement(super.provider);

  @override
  int get diIdx => (origin as WeatherProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
