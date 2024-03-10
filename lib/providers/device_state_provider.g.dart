// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deviceStateHash() => r'e65c9bcaf1d3a0883022cb21df3bf28cb50ebea1';

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

abstract class _$DeviceState
    extends BuildlessAutoDisposeNotifier<DeviceStateModel> {
  late final int diIdx;

  DeviceStateModel build(
    int diIdx,
  );
}

/// See also [DeviceState].
@ProviderFor(DeviceState)
const deviceStateProvider = DeviceStateFamily();

/// See also [DeviceState].
class DeviceStateFamily extends Family<DeviceStateModel> {
  /// See also [DeviceState].
  const DeviceStateFamily();

  /// See also [DeviceState].
  DeviceStateProvider call(
    int diIdx,
  ) {
    return DeviceStateProvider(
      diIdx,
    );
  }

  @override
  DeviceStateProvider getProviderOverride(
    covariant DeviceStateProvider provider,
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
  String? get name => r'deviceStateProvider';
}

/// See also [DeviceState].
class DeviceStateProvider
    extends AutoDisposeNotifierProviderImpl<DeviceState, DeviceStateModel> {
  /// See also [DeviceState].
  DeviceStateProvider(
    int diIdx,
  ) : this._internal(
          () => DeviceState()..diIdx = diIdx,
          from: deviceStateProvider,
          name: r'deviceStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deviceStateHash,
          dependencies: DeviceStateFamily._dependencies,
          allTransitiveDependencies:
              DeviceStateFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  DeviceStateProvider._internal(
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
  DeviceStateModel runNotifierBuild(
    covariant DeviceState notifier,
  ) {
    return notifier.build(
      diIdx,
    );
  }

  @override
  Override overrideWith(DeviceState Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeviceStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<DeviceState, DeviceStateModel>
      createElement() {
    return _DeviceStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceStateProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeviceStateRef on AutoDisposeNotifierProviderRef<DeviceStateModel> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _DeviceStateProviderElement
    extends AutoDisposeNotifierProviderElement<DeviceState, DeviceStateModel>
    with DeviceStateRef {
  _DeviceStateProviderElement(super.provider);

  @override
  int get diIdx => (origin as DeviceStateProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
