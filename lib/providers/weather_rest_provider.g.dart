// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_rest_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherRestHash() => r'1a615ba7a540c3d171ccd8b8d5263518d899b0d1';

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

abstract class _$WeatherRest
    extends BuildlessAutoDisposeAsyncNotifier<List<WeatherModel>> {
  late final int diIdx;
  late final String startDate;
  late final String endDate;

  FutureOr<List<WeatherModel>> build({
    required int diIdx,
    required String startDate,
    required String endDate,
  });
}

/// See also [WeatherRest].
@ProviderFor(WeatherRest)
const weatherRestProvider = WeatherRestFamily();

/// See also [WeatherRest].
class WeatherRestFamily extends Family<AsyncValue<List<WeatherModel>>> {
  /// See also [WeatherRest].
  const WeatherRestFamily();

  /// See also [WeatherRest].
  WeatherRestProvider call({
    required int diIdx,
    required String startDate,
    required String endDate,
  }) {
    return WeatherRestProvider(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  WeatherRestProvider getProviderOverride(
    covariant WeatherRestProvider provider,
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
  String? get name => r'weatherRestProvider';
}

/// See also [WeatherRest].
class WeatherRestProvider extends AutoDisposeAsyncNotifierProviderImpl<
    WeatherRest, List<WeatherModel>> {
  /// See also [WeatherRest].
  WeatherRestProvider({
    required int diIdx,
    required String startDate,
    required String endDate,
  }) : this._internal(
          () => WeatherRest()
            ..diIdx = diIdx
            ..startDate = startDate
            ..endDate = endDate,
          from: weatherRestProvider,
          name: r'weatherRestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherRestHash,
          dependencies: WeatherRestFamily._dependencies,
          allTransitiveDependencies:
              WeatherRestFamily._allTransitiveDependencies,
          diIdx: diIdx,
          startDate: startDate,
          endDate: endDate,
        );

  WeatherRestProvider._internal(
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
  FutureOr<List<WeatherModel>> runNotifierBuild(
    covariant WeatherRest notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Override overrideWith(WeatherRest Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherRestProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<WeatherRest, List<WeatherModel>>
      createElement() {
    return _WeatherRestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherRestProvider &&
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

mixin WeatherRestRef
    on AutoDisposeAsyncNotifierProviderRef<List<WeatherModel>> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;

  /// The parameter `startDate` of this provider.
  String get startDate;

  /// The parameter `endDate` of this provider.
  String get endDate;
}

class _WeatherRestProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeatherRest,
        List<WeatherModel>> with WeatherRestRef {
  _WeatherRestProviderElement(super.provider);

  @override
  int get diIdx => (origin as WeatherRestProvider).diIdx;
  @override
  String get startDate => (origin as WeatherRestProvider).startDate;
  @override
  String get endDate => (origin as WeatherRestProvider).endDate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
