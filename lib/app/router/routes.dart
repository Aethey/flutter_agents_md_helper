import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/review/presentation/review_screen.dart';
import '../../features/wizard/presentation/wizard_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<WizardRoute>(path: '/')
class WizardRoute extends GoRouteData with $WizardRoute {
  const WizardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WizardScreen();
}

@TypedGoRoute<ReviewRoute>(path: '/review')
class ReviewRoute extends GoRouteData with $ReviewRoute {
  const ReviewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ReviewScreen();
}
