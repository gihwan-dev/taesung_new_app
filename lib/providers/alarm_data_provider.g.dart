// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$alarmDataHash() => r'b0046b5058eedfed0a2893d22eb6bf80ee3a490c';

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

abstract class _$AlarmData
    extends BuildlessAutoDisposeAsyncNotifier<List<AlarmDataModel>> {
  late final int diIdx;
  late final int acIdx;

  FutureOr<List<AlarmDataModel>> build({
    required int diIdx,
    required int acIdx,
  });
}

/// See also [AlarmData].
@ProviderFor(AlarmData)
const alarmDataProvider = AlarmDataFamily();

/// See also [AlarmData].
class AlarmDataFamily extends Family<AsyncValue<List<AlarmDataModel>>> {
  /// See also [AlarmData].
  const AlarmDataFamily();

  /// See also [AlarmData].
  AlarmDataProvider call({
    required int diIdx,
    required int acIdx,
  }) {
    return AlarmDataProvider(
      diIdx: diIdx,
      acIdx: acIdx,
    );
  }

  @override
  AlarmDataProvider getProviderOverride(
    covariant AlarmDataProvider provider,
  ) {
    return call(
      diIdx: provider.diIdx,
      acIdx: provider.acIdx,
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
  String? get name => r'alarmDataProvider';
}

/// See also [AlarmData].
class AlarmDataProvider extends AutoDisposeAsyncNotifierProviderImpl<AlarmData,
    List<AlarmDataModel>> {
  /// See also [AlarmData].
  AlarmDataProvider({
    required int diIdx,
    required int acIdx,
  }) : this._internal(
          () => AlarmData()
            ..diIdx = diIdx
            ..acIdx = acIdx,
          from: alarmDataProvider,
          name: r'alarmDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$alarmDataHash,
          dependencies: AlarmDataFamily._dependencies,
          allTransitiveDependencies: AlarmDataFamily._allTransitiveDependencies,
          diIdx: diIdx,
          acIdx: acIdx,
        );

  AlarmDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diIdx,
    required this.acIdx,
  }) : super.internal();

  final int diIdx;
  final int acIdx;

  @override
  FutureOr<List<AlarmDataModel>> runNotifierBuild(
    covariant AlarmData notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
      acIdx: acIdx,
    );
  }

  @override
  Override overrideWith(AlarmData Function() create) {
    return ProviderOverride(
      origin: this,
      override: AlarmDataProvider._internal(
        () => create()
          ..diIdx = diIdx
          ..acIdx = acIdx,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diIdx: diIdx,
        acIdx: acIdx,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AlarmData, List<AlarmDataModel>>
      createElement() {
    return _AlarmDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AlarmDataProvider &&
        other.diIdx == diIdx &&
        other.acIdx == acIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);
    hash = _SystemHash.combine(hash, acIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AlarmDataRef
    on AutoDisposeAsyncNotifierProviderRef<List<AlarmDataModel>> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;

  /// The parameter `acIdx` of this provider.
  int get acIdx;
}

class _AlarmDataProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    AlarmData, List<AlarmDataModel>> with AlarmDataRef {
  _AlarmDataProviderElement(super.provider);

  @override
  int get diIdx => (origin as AlarmDataProvider).diIdx;
  @override
  int get acIdx => (origin as AlarmDataProvider).acIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
