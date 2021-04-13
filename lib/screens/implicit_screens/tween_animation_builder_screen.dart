import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatefulWidget {
  @override
  _TweenAnimationBuilderScreenState createState() => _TweenAnimationBuilderScreenState();
}

class _TweenAnimationBuilderScreenState extends State<TweenAnimationBuilderScreen> {
  double _value = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: _value),
          onEnd: () => print('TweenAnimationBuilder --> END'),
          duration: Duration(milliseconds: 1500),
          child: Icon(Icons.extension, color: Colors.blueGrey),
          builder: (context, size, child) {
            return IconButton(
              iconSize: size,
              icon: child,
              onPressed: () => setState(() => _value = _value == 60 ? 200 : 60),
            );
          },
        ),
      ),
    );
  }
}
