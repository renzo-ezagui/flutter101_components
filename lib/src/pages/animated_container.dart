import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 750),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _morph(context),
          child: Icon(Icons.cached),
        ),
      ),
    );
  }

  void _morph(BuildContext context) {
    setState(() {
      var rnd = new Random();
      _width = rnd.nextInt(450).toDouble() + rnd.nextDouble();
      _height = rnd.nextInt(450).toDouble() + rnd.nextDouble();
      _color = Color.fromRGBO(
          rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 100);
      _borderRadius = BorderRadius.circular(rnd.nextInt(100).toDouble());
    });
  }
}
