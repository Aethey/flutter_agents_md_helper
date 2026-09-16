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

String _$knowledgeBundleHash() => r'e4334760263b009bd94d941158a8db7454be97b6';

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
    r'07d7c0d3556cef39a4359dbee4a0ffbba93ce233';

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

String _$localeControllerHash() => r'1944543f0c0b27551c103958ae0c511bb32552c9';

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

String _$wizardControllerHash() => r'eefd0c8175b132886ea508395fd60767a80a2090';

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
