// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_setting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deviceSettingHash() => r'5285fd806c532cfeede61124f31266c448c774ba';

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

abstract class _$DeviceSetting
    extends BuildlessAutoDisposeAsyncNotifier<DeviceSettingModel?> {
  late final int diIdx;

  FutureOr<DeviceSettingModel?> build({
    required int diIdx,
  });
}

/// See also [DeviceSetting].
@ProviderFor(DeviceSetting)
const deviceSettingProvider = DeviceSettingFamily();

/// See also [DeviceSetting].
class DeviceSettingFamily extends Family<AsyncValue<DeviceSettingModel?>> {
  /// See also [DeviceSetting].
  const DeviceSettingFamily();

  /// See also [DeviceSetting].
  DeviceSettingProvider call({
    required int diIdx,
  }) {
    return DeviceSettingProvider(
      diIdx: diIdx,
    );
  }

  @override
  DeviceSettingProvider getProviderOverride(
    covariant DeviceSettingProvider provider,
  ) {
    return call(
      diIdx: provider.diIdx,
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
  String? get name => r'deviceSettingProvider';
}

/// See also [DeviceSetting].
class DeviceSettingProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DeviceSetting, DeviceSettingModel?> {
  /// See also [DeviceSetting].
  DeviceSettingProvider({
    required int diIdx,
  }) : this._internal(
          () => DeviceSetting()..diIdx = diIdx,
          from: deviceSettingProvider,
          name: r'deviceSettingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deviceSettingHash,
          dependencies: DeviceSettingFamily._dependencies,
          allTransitiveDependencies:
              DeviceSettingFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  DeviceSettingProvider._internal(
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
  FutureOr<DeviceSettingModel?> runNotifierBuild(
    covariant DeviceSetting notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
    );
  }

  @override
  Override overrideWith(DeviceSetting Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeviceSettingProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DeviceSetting, DeviceSettingModel?>
      createElement() {
    return _DeviceSettingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceSettingProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeviceSettingRef
    on AutoDisposeAsyncNotifierProviderRef<DeviceSettingModel?> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _DeviceSettingProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DeviceSetting,
        DeviceSettingModel?> with DeviceSettingRef {
  _DeviceSettingProviderElement(super.provider);

  @override
  int get diIdx => (origin as DeviceSettingProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
