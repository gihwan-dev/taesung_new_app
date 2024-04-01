// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationSettingHash() =>
    r'584e60515bd58c1c5db1bd009d6bb5a5eb687741';

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

abstract class _$NotificationSetting
    extends BuildlessAutoDisposeAsyncNotifier<NotificationSettingModel> {
  late final int diIdx;

  FutureOr<NotificationSettingModel> build({
    required int diIdx,
  });
}

/// See also [NotificationSetting].
@ProviderFor(NotificationSetting)
const notificationSettingProvider = NotificationSettingFamily();

/// See also [NotificationSetting].
class NotificationSettingFamily
    extends Family<AsyncValue<NotificationSettingModel>> {
  /// See also [NotificationSetting].
  const NotificationSettingFamily();

  /// See also [NotificationSetting].
  NotificationSettingProvider call({
    required int diIdx,
  }) {
    return NotificationSettingProvider(
      diIdx: diIdx,
    );
  }

  @override
  NotificationSettingProvider getProviderOverride(
    covariant NotificationSettingProvider provider,
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
  String? get name => r'notificationSettingProvider';
}

/// See also [NotificationSetting].
class NotificationSettingProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NotificationSetting, NotificationSettingModel> {
  /// See also [NotificationSetting].
  NotificationSettingProvider({
    required int diIdx,
  }) : this._internal(
          () => NotificationSetting()..diIdx = diIdx,
          from: notificationSettingProvider,
          name: r'notificationSettingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationSettingHash,
          dependencies: NotificationSettingFamily._dependencies,
          allTransitiveDependencies:
              NotificationSettingFamily._allTransitiveDependencies,
          diIdx: diIdx,
        );

  NotificationSettingProvider._internal(
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
  FutureOr<NotificationSettingModel> runNotifierBuild(
    covariant NotificationSetting notifier,
  ) {
    return notifier.build(
      diIdx: diIdx,
    );
  }

  @override
  Override overrideWith(NotificationSetting Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationSettingProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NotificationSetting,
      NotificationSettingModel> createElement() {
    return _NotificationSettingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationSettingProvider && other.diIdx == diIdx;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diIdx.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationSettingRef
    on AutoDisposeAsyncNotifierProviderRef<NotificationSettingModel> {
  /// The parameter `diIdx` of this provider.
  int get diIdx;
}

class _NotificationSettingProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationSetting,
        NotificationSettingModel> with NotificationSettingRef {
  _NotificationSettingProviderElement(super.provider);

  @override
  int get diIdx => (origin as NotificationSettingProvider).diIdx;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
