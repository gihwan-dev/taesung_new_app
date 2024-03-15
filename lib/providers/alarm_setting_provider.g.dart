// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_setting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$alarmSettingHash() => r'0b81a78f19b0dcb6defbaac9229ac97a240b75e0';

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

abstract class _$AlarmSetting
    extends BuildlessAutoDisposeAsyncNotifier<AlarmSettingModel> {
  late final int diIdx;

  FutureOr<AlarmSettingModel> build({
    required int diIdx,
  });
}

/// See also [AlarmSetting].
@ProviderFor(AlarmSetting)
const alarmSettingProvider = AlarmSettingFamily();

/// See also [AlarmSetting].
class AlarmSettingFamily extends Family<AsyncValue<AlarmSettingModel>> {
  /// See also [AlarmSetting].
  const AlarmSettingFamily();

  /// See also [AlarmSetting].
  AlarmSettingProvider call({
    required int diIdx,
  }) {
    return AlarmSettingProvider(
      diIdx: diIdx,
    );
  }

  @override
  AlarmSettingProvider getProviderOverride(
    covariant AlarmSettingProvider provider,
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
  String? get name => r'alarmSettingProvider';
}

/// See also [AlarmSetting].
class AlarmSettingProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AlarmSetting, AlarmSettingModel> {
  /// See also [AlarmSetting].
  AlarmSettingProvider({
    required int diIdx,
  }) : this._internal(
          () => AlarmSetting()..diIdx = diIdx,
          from: alarmSettingProvider,
          name: r'alarmSettingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$alarmSettingHash,
          dependencies: AlarmSettingFamily._dependencies,
          allTransitiveDependencies:
              AlarmSettingFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  AlarmSettingProvider._internal(
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
  FutureOr<AlarmSettingModel> runNotifierBuild(
    covariant AlarmSetting notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
    );
  }

  @override
  Override overrideWith(AlarmSetting Function() create) {
    return ProviderOverride(
      origin: this,
      override: AlarmSettingProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AlarmSetting, AlarmSettingModel>
      createElement() {
    return _AlarmSettingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AlarmSettingProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AlarmSettingRef
    on AutoDisposeAsyncNotifierProviderRef<AlarmSettingModel> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _AlarmSettingProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AlarmSetting,
        AlarmSettingModel> with AlarmSettingRef {
  _AlarmSettingProviderElement(super.provider);

  @override
  int get diIdx => (origin as AlarmSettingProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
