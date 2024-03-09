// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createTodoHash() => r'8f1a823eb02910c502d2c06b3841c0a11103f9bb';

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

/// See also [createTodo].
@ProviderFor(createTodo)
const createTodoProvider = CreateTodoFamily();

/// See also [createTodo].
class CreateTodoFamily extends Family<AsyncValue<void>> {
  /// See also [createTodo].
  const CreateTodoFamily();

  /// See also [createTodo].
  CreateTodoProvider call(
    String details,
  ) {
    return CreateTodoProvider(
      details,
    );
  }

  @override
  CreateTodoProvider getProviderOverride(
    covariant CreateTodoProvider provider,
  ) {
    return call(
      provider.details,
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
  String? get name => r'createTodoProvider';
}

/// See also [createTodo].
class CreateTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createTodo].
  CreateTodoProvider(
    String details,
  ) : this._internal(
          (ref) => createTodo(
            ref as CreateTodoRef,
            details,
          ),
          from: createTodoProvider,
          name: r'createTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createTodoHash,
          dependencies: CreateTodoFamily._dependencies,
          allTransitiveDependencies:
              CreateTodoFamily._allTransitiveDependencies,
          details: details,
        );

  CreateTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.details,
  }) : super.internal();

  final String details;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateTodoProvider._internal(
        (ref) => create(ref as CreateTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        details: details,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateTodoProvider && other.details == details;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, details.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `details` of this provider.
  String get details;
}

class _CreateTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateTodoRef {
  _CreateTodoProviderElement(super.provider);

  @override
  String get details => (origin as CreateTodoProvider).details;
}

String _$updateTodoHash() => r'b3636f0fe43a0d1922613997838fb69a17f023b8';

/// See also [updateTodo].
@ProviderFor(updateTodo)
const updateTodoProvider = UpdateTodoFamily();

/// See also [updateTodo].
class UpdateTodoFamily extends Family<AsyncValue<void>> {
  /// See also [updateTodo].
  const UpdateTodoFamily();

  /// See also [updateTodo].
  UpdateTodoProvider call(
    int id,
    String newDetail,
  ) {
    return UpdateTodoProvider(
      id,
      newDetail,
    );
  }

  @override
  UpdateTodoProvider getProviderOverride(
    covariant UpdateTodoProvider provider,
  ) {
    return call(
      provider.id,
      provider.newDetail,
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
  String? get name => r'updateTodoProvider';
}

/// See also [updateTodo].
class UpdateTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateTodo].
  UpdateTodoProvider(
    int id,
    String newDetail,
  ) : this._internal(
          (ref) => updateTodo(
            ref as UpdateTodoRef,
            id,
            newDetail,
          ),
          from: updateTodoProvider,
          name: r'updateTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateTodoHash,
          dependencies: UpdateTodoFamily._dependencies,
          allTransitiveDependencies:
              UpdateTodoFamily._allTransitiveDependencies,
          id: id,
          newDetail: newDetail,
        );

  UpdateTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.newDetail,
  }) : super.internal();

  final int id;
  final String newDetail;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateTodoProvider._internal(
        (ref) => create(ref as UpdateTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        newDetail: newDetail,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateTodoProvider &&
        other.id == id &&
        other.newDetail == newDetail;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, newDetail.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `newDetail` of this provider.
  String get newDetail;
}

class _UpdateTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateTodoRef {
  _UpdateTodoProviderElement(super.provider);

  @override
  int get id => (origin as UpdateTodoProvider).id;
  @override
  String get newDetail => (origin as UpdateTodoProvider).newDetail;
}

String _$deleteTodoHash() => r'a79b2de796e67df7e7c279003c1769c48dd9fc51';

/// See also [deleteTodo].
@ProviderFor(deleteTodo)
const deleteTodoProvider = DeleteTodoFamily();

/// See also [deleteTodo].
class DeleteTodoFamily extends Family<AsyncValue<void>> {
  /// See also [deleteTodo].
  const DeleteTodoFamily();

  /// See also [deleteTodo].
  DeleteTodoProvider call(
    int id,
  ) {
    return DeleteTodoProvider(
      id,
    );
  }

  @override
  DeleteTodoProvider getProviderOverride(
    covariant DeleteTodoProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'deleteTodoProvider';
}

/// See also [deleteTodo].
class DeleteTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteTodo].
  DeleteTodoProvider(
    int id,
  ) : this._internal(
          (ref) => deleteTodo(
            ref as DeleteTodoRef,
            id,
          ),
          from: deleteTodoProvider,
          name: r'deleteTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteTodoHash,
          dependencies: DeleteTodoFamily._dependencies,
          allTransitiveDependencies:
              DeleteTodoFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteTodoProvider._internal(
        (ref) => create(ref as DeleteTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteTodoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteTodoRef {
  _DeleteTodoProviderElement(super.provider);

  @override
  int get id => (origin as DeleteTodoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
