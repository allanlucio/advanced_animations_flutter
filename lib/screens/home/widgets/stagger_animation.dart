import 'package:advanced_animations/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrow;

  StaggerAnimation({Key key, @required this.controller})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[HomeTop(containerGrow: containerGrow)],
    );
  }
}
