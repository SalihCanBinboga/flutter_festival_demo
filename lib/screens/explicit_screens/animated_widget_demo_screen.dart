import 'package:flutter/material.dart';

class AnimatedWidgetDemoScreen extends StatefulWidget {
  @override
  _AnimatedWidgetDemoScreenState createState() => _AnimatedWidgetDemoScreenState();
}

class _AnimatedWidgetDemoScreenState extends State<AnimatedWidgetDemoScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
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
          child: _RotateScaleTransition(
            animation: _controller,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class _RotateScaleTransition extends AnimatedWidget {
  _RotateScaleTransition({Key key, @required Animation<double> animation, this.child})
      : assert(animation != null),
        super(key: key, listenable: animation);

  final Widget child;

  Animation<double> get animation => listenable;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animation,
      child: ScaleTransition(
        scale: ReverseAnimation(animation),
        child: child,
      ),
    );
  }
}
