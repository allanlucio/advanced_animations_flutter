import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {
  Widget child;
  Animation<double> animation;

  GrowTransition({this.child, this.animation});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        
        animation: animation,
        child: child,
        builder: (_, child) {
          return Container(
            width: animation.value,
            height: animation.value,
            child: child,
          );
        },
      ),
    );
  }
}