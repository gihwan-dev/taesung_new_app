// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sensorDataHash() => r'665e5753cc3ab73037fe29a1439ef86c3499cecf';

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

abstract class _$SensorData
    extends BuildlessAutoDisposeNotifier<SensorDataModel> {
  late final int diIdx;

  SensorDataModel build(
    int diIdx,
  );
}

/// See also [SensorData].
@ProviderFor(SensorData)
const sensorDataProvider = SensorDataFamily();

/// See also [SensorData].
class SensorDataFamily extends Family<SensorDataModel> {
  /// See also [SensorData].
  const SensorDataFamily();

  /// See also [SensorData].
  SensorDataProvider call(
    int diIdx,
  ) {
    return SensorDataProvider(
      diIdx,
    );
  }

  @override
  SensorDataProvider getProviderOverride(
    covariant SensorDataProvider provider,
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
  String? get name => r'sensorDataProvider';
}

/// See also [SensorData].
class SensorDataProvider
    extends AutoDisposeNotifierProviderImpl<SensorData, SensorDataModel> {
  /// See also [SensorData].
  SensorDataProvider(
    int diIdx,
  ) : this._internal(
          () => SensorData()..diIdx = diIdx,
          from: sensorDataProvider,
          name: r'sensorDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sensorDataHash,
          dependencies: SensorDataFamily._dependencies,
          allTransitiveDependencies:
              SensorDataFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  SensorDataProvider._internal(
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
  SensorDataModel runNotifierBuild(
    covariant SensorData notifier,
  ) {
    return notifier.build(
      diIdx,
    );
  }

  @override
  Override overrideWith(SensorData Function() create) {
    return ProviderOverride(
      origin: this,
      override: SensorDataProvider._internal(
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
  AutoDisposeNotifierProviderElement<SensorData, SensorDataModel>
      createElement() {
    return _SensorDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SensorDataProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SensorDataRef on AutoDisposeNotifierProviderRef<SensorDataModel> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _SensorDataProviderElement
    extends AutoDisposeNotifierProviderElement<SensorData, SensorDataModel>
    with SensorDataRef {
  _SensorDataProviderElement(super.provider);

  @override
  int get diIdx => (origin as SensorDataProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
