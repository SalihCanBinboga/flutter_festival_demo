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
  Animation<double> _tweenSequence;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _scaleAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 0.7),
      ),
    );
    _tweenSequence = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1.0).chain(CurveTween(curve: Curves.easeOut)),
          weight: 40.0,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(1.0),
          weight: 20.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.0, end: 0).chain(CurveTween(curve: Curves.easeIn)),
          weight: 40.0,
        ),
      ],
    ).animate(_controller);
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
              angle: 2 * pi * _tweenSequence.value,
              child: Container(
                color: Colors.red,
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
