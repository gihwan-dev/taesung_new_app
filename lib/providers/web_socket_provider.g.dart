// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webSocketHash() => r'd6fce01b5b4e5fe39028c1bf98cbbf419d41ee49';

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

/// See also [webSocket].
@ProviderFor(webSocket)
const webSocketProvider = WebSocketFamily();

/// See also [webSocket].
class WebSocketFamily extends Family<IO.Socket> {
  /// See also [webSocket].
  const WebSocketFamily();

  /// See also [webSocket].
  WebSocketProvider call(
    String namespace,
  ) {
    return WebSocketProvider(
      namespace,
    );
  }

  @override
  WebSocketProvider getProviderOverride(
    covariant WebSocketProvider provider,
  ) {
    return call(
      provider.namespace,
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
  String? get name => r'webSocketProvider';
}

/// See also [webSocket].
class WebSocketProvider extends AutoDisposeProvider<IO.Socket> {
  /// See also [webSocket].
  WebSocketProvider(
    String namespace,
  ) : this._internal(
          (ref) => webSocket(
            ref as WebSocketRef,
            namespace,
          ),
          from: webSocketProvider,
          name: r'webSocketProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$webSocketHash,
          dependencies: WebSocketFamily._dependencies,
          allTransitiveDependencies: WebSocketFamily._allTransitiveDependencies,
          namespace: namespace,
        );

  WebSocketProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.namespace,
  }) : super.internal();

  final String namespace;

  @override
  Override overrideWith(
    IO.Socket Function(WebSocketRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WebSocketProvider._internal(
        (ref) => create(ref as WebSocketRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        namespace: namespace,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<IO.Socket> createElement() {
    return _WebSocketProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebSocketProvider && other.namespace == namespace;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, namespace.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WebSocketRef on AutoDisposeProviderRef<IO.Socket> {
  /// The parameter `namespace` of this provider.
  String get namespace;
}

class _WebSocketProviderElement extends AutoDisposeProviderElement<IO.Socket>
    with WebSocketRef {
  _WebSocketProviderElement(super.provider);

  @override
  String get namespace => (origin as WebSocketProvider).namespace;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
