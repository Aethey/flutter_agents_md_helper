// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$wizardRoute, $reviewRoute];

RouteBase get $wizardRoute => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $WizardRoute._fromState,
);

mixin $WizardRoute on GoRouteData {
  static WizardRoute _fromState(GoRouterState state) => const WizardRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $reviewRoute => GoRouteData.$route(
  path: '/review',
  hasOverriddenOnExit: false,
  factory: $ReviewRoute._fromState,
);

mixin $ReviewRoute on GoRouteData {
  static ReviewRoute _fromState(GoRouterState state) => const ReviewRoute();

  @override
  String get location => GoRouteData.$location('/review');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
