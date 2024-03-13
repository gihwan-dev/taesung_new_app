// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_rest_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sensorRestHash() => r'057e6f9f829caeaa1b0e18f2bf062bce0445c8ee';

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

abstract class _$SensorRest
    extends BuildlessAutoDisposeAsyncNotifier<List<SensorDataModel>> {
  late final int diIdx;
  late final String startDate;
  late final String endDate;

  FutureOr<List<SensorDataModel>> build({
    required int diIdx,
    required String startDate,
    required String endDate,
  });
}

/// See also [SensorRest].
@ProviderFor(SensorRest)
const sensorRestProvider = SensorRestFamily();

/// See also [SensorRest].
class SensorRestFamily extends Family<AsyncValue<List<SensorDataModel>>> {
  /// See also [SensorRest].
  const SensorRestFamily();

  /// See also [SensorRest].
  SensorRestProvider call({
    required int diIdx,
    required String startDate,
    required String endDate,
  }) {
    return SensorRestProvider(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  SensorRestProvider getProviderOverride(
    covariant SensorRestProvider provider,
  ) {
    return call(
      diIdx: provider.diIdx,
      startDate: provider.startDate,
      endDate: provider.endDate,
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
  String? get name => r'sensorRestProvider';
}

/// See also [SensorRest].
class SensorRestProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SensorRest, List<SensorDataModel>> {
  /// See also [SensorRest].
  SensorRestProvider({
    required int diIdx,
    required String startDate,
    required String endDate,
  }) : this._internal(
          () => SensorRest()
            ..diIdx = diIdx
            ..startDate = startDate
            ..endDate = endDate,
          from: sensorRestProvider,
          name: r'sensorRestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sensorRestHash,
          dependencies: SensorRestFamily._dependencies,
          allTransitiveDependencies:
              SensorRestFamily._allTransitiveDependencies,
          diIdx: diIdx,
          startDate: startDate,
          endDate: endDate,
        );

  SensorRestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diIdx,
    required this.startDate,
    required this.endDate,
  }) : super.internal();

  final int diIdx;
  final String startDate;
  final String endDate;

  @override
  FutureOr<List<SensorDataModel>> runNotifierBuild(
    covariant SensorRest notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Override overrideWith(SensorRest Function() create) {
    return ProviderOverride(
      origin: this,
      override: SensorRestProvider._internal(
        () => create()
          ..diIdx = diIdx
          ..startDate = startDate
          ..endDate = endDate,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diIdx: diIdx,
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SensorRest, List<SensorDataModel>>
      createElement() {
    return _SensorRestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SensorRestProvider &&
        other.diIdx == diIdx &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SensorRestRef
    on AutoDisposeAsyncNotifierProviderRef<List<SensorDataModel>> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;

  /// The parameter `startDate` of this provider.
  String get startDate;

  /// The parameter `endDate` of this provider.
  String get endDate;
}

class _SensorRestProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SensorRest,
        List<SensorDataModel>> with SensorRestRef {
  _SensorRestProviderElement(super.provider);

  @override
  int get diIdx => (origin as SensorRestProvider).diIdx;
  @override
  String get startDate => (origin as SensorRestProvider).startDate;
  @override
  String get endDate => (origin as SensorRestProvider).endDate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
