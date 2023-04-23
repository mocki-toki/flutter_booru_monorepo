import 'package:flutter/widgets.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

class FadeTransitionPageWidget extends CustomTransitionPage {
  FadeTransitionPageWidget({
    LocalKey? key,
    required Widget child,
  }) : super(
          key: key,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: child,
        );
}
