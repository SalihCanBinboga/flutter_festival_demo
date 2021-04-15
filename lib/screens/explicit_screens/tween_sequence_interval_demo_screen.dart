import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TweenSequenceIntervalDemoScreen extends StatefulWidget {
  @override
  _TweenSequenceIntervalDemoScreenState createState() => _TweenSequenceIntervalDemoScreenState();
}

class _TweenSequenceIntervalDemoScreenState extends State<TweenSequenceIntervalDemoScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _rotateAnimation;
  Animation<Color> _colorAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.yellow).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1, 0.3),
      ),
    );
    _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.2, 0.7),
      ),
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.9, 1),
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => _controller.forward(),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (ctx, _) => Transform.rotate(
              alignment: Alignment.center,
              angle: 2 * pi * _rotateAnimation.value,
              child: Container(
                color: _colorAnimation.value,
                width: 200 * _scaleAnimation.value,
                height: 200 * _scaleAnimation.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
