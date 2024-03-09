// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllTodosHash() => r'59e3e86d67e3e4ca9cbdea7fad07a647b31f3c25';

/// See also [getAllTodos].
@ProviderFor(getAllTodos)
final getAllTodosProvider = AutoDisposeFutureProvider<List<Todo>>.internal(
  getAllTodos,
  name: r'getAllTodosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getAllTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllTodosRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$readTodoHash() => r'b0dc4738211a7ce79c35fe4d3291fcbbf826b4c1';

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

/// See also [readTodo].
@ProviderFor(readTodo)
const readTodoProvider = ReadTodoFamily();

/// See also [readTodo].
class ReadTodoFamily extends Family<AsyncValue<Todo?>> {
  /// See also [readTodo].
  const ReadTodoFamily();

  /// See also [readTodo].
  ReadTodoProvider call(
    int id,
  ) {
    return ReadTodoProvider(
      id,
    );
  }

  @override
  ReadTodoProvider getProviderOverride(
    covariant ReadTodoProvider provider,
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
  String? get name => r'readTodoProvider';
}

/// See also [readTodo].
class ReadTodoProvider extends AutoDisposeFutureProvider<Todo?> {
  /// See also [readTodo].
  ReadTodoProvider(
    int id,
  ) : this._internal(
          (ref) => readTodo(
            ref as ReadTodoRef,
            id,
          ),
          from: readTodoProvider,
          name: r'readTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$readTodoHash,
          dependencies: ReadTodoFamily._dependencies,
          allTransitiveDependencies: ReadTodoFamily._allTransitiveDependencies,
          id: id,
        );

  ReadTodoProvider._internal(
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
    FutureOr<Todo?> Function(ReadTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReadTodoProvider._internal(
        (ref) => create(ref as ReadTodoRef),
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
  AutoDisposeFutureProviderElement<Todo?> createElement() {
    return _ReadTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadTodoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReadTodoRef on AutoDisposeFutureProviderRef<Todo?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ReadTodoProviderElement extends AutoDisposeFutureProviderElement<Todo?>
    with ReadTodoRef {
  _ReadTodoProviderElement(super.provider);

  @override
  int get id => (origin as ReadTodoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
