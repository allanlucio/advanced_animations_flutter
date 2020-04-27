import 'package:flutter/material.dart';

class GrowTransparencyTransition extends StatelessWidget {
  Widget child;
  Animation<double> animation;
  final sizeTween = Tween<double>(begin: 0, end: 300);
  final opacityTween = Tween<double>(begin: 0.1, end: 1);

  GrowTransparencyTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        child: child,
        builder: (_, child) {
          return Opacity(
            opacity: opacityTween.evaluate(animation).clamp(0.0, 1.0),
            child: Container(
              width: sizeTween.evaluate(animation),
              height: sizeTween.evaluate(animation),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
