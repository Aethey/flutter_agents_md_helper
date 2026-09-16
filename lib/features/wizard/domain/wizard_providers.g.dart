// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wizard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(knowledgeRepository)
const knowledgeRepositoryProvider = KnowledgeRepositoryProvider._();

final class KnowledgeRepositoryProvider
    extends
        $FunctionalProvider<
          KnowledgeRepository,
          KnowledgeRepository,
          KnowledgeRepository
        >
    with $Provider<KnowledgeRepository> {
  const KnowledgeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'knowledgeRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$knowledgeRepositoryHash();

  @$internal
  @override
  $ProviderElement<KnowledgeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  KnowledgeRepository create(Ref ref) {
    return knowledgeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KnowledgeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KnowledgeRepository>(value),
    );
  }
}

String _$knowledgeRepositoryHash() =>
    r'01a41dcc69ca3db233b75dd04cc5fe7d53093c0a';

@ProviderFor(sessionStore)
const sessionStoreProvider = SessionStoreProvider._();

final class SessionStoreProvider
    extends $FunctionalProvider<SessionStore, SessionStore, SessionStore>
    with $Provider<SessionStore> {
  const SessionStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionStoreHash();

  @$internal
  @override
  $ProviderElement<SessionStore> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SessionStore create(Ref ref) {
    return sessionStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionStore>(value),
    );
  }
}

String _$sessionStoreHash() => r'dae54e7ff0b56d59da50a798bb49bd9c18e96716';

@ProviderFor(knowledgeCatalog)
const knowledgeCatalogProvider = KnowledgeCatalogProvider._();

final class KnowledgeCatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<KnowledgeBundle>,
          KnowledgeBundle,
          FutureOr<KnowledgeBundle>
        >
    with $FutureModifier<KnowledgeBundle>, $FutureProvider<KnowledgeBundle> {
  const KnowledgeCatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'knowledgeCatalogProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$knowledgeCatalogHash();

  @$internal
  @override
  $FutureProviderElement<KnowledgeBundle> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<KnowledgeBundle> create(Ref ref) {
    return knowledgeCatalog(ref);
  }
}

String _$knowledgeCatalogHash() => r'5e9b59f9832db807d86a6c885a9be79c7861bd70';

@ProviderFor(knowledgeBundle)
const knowledgeBundleProvider = KnowledgeBundleProvider._();

final class KnowledgeBundleProvider
    extends
        $FunctionalProvider<
          AsyncValue<KnowledgeBundle>,
          KnowledgeBundle,
          FutureOr<KnowledgeBundle>
        >
    with $FutureModifier<KnowledgeBundle>, $FutureProvider<KnowledgeBundle> {
  const KnowledgeBundleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'knowledgeBundleProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$knowledgeBundleHash();

  @$internal
  @override
  $FutureProviderElement<KnowledgeBundle> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<KnowledgeBundle> create(Ref ref) {
    return knowledgeBundle(ref);
  }
}

String _$knowledgeBundleHash() => r'5ede73072e6e131122316ab788df9cf2e1773c86';

@ProviderFor(ThemeModeController)
const themeModeControllerProvider = ThemeModeControllerProvider._();

final class ThemeModeControllerProvider
    extends $NotifierProvider<ThemeModeController, ThemeMode> {
  const ThemeModeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeModeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeModeControllerHash();

  @$internal
  @override
  ThemeModeController create() => ThemeModeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeModeControllerHash() =>
    r'645793c4002540e9872b1028ced439939bfe9492';

abstract class _$ThemeModeController extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LocaleController)
const localeControllerProvider = LocaleControllerProvider._();

final class LocaleControllerProvider
    extends $NotifierProvider<LocaleController, Locale> {
  const LocaleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeControllerHash();

  @$internal
  @override
  LocaleController create() => LocaleController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale>(value),
    );
  }
}

String _$localeControllerHash() => r'20f7fb276f4e5383646a7426be6cad3a38ca6380';

abstract class _$LocaleController extends $Notifier<Locale> {
  Locale build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Locale, Locale>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Locale, Locale>,
              Locale,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(WizardController)
const wizardControllerProvider = WizardControllerProvider._();

final class WizardControllerProvider
    extends $NotifierProvider<WizardController, ArchitectureState> {
  const WizardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wizardControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wizardControllerHash();

  @$internal
  @override
  WizardController create() => WizardController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArchitectureState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArchitectureState>(value),
    );
  }
}

String _$wizardControllerHash() => r'783e506e7cd77b1e71a33686f7e1855a4b1e2544';

abstract class _$WizardController extends $Notifier<ArchitectureState> {
  ArchitectureState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ArchitectureState, ArchitectureState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ArchitectureState, ArchitectureState>,
              ArchitectureState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
