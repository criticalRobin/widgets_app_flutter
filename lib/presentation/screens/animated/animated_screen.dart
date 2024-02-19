import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = "animated_screen";

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 100;
  double height = 200;
  Color color = Colors.lime;
  double borderRadius = 20.0;

  void changeShape() {
    setState(() {
      width = Random().nextInt(300) + 50;
      height = Random().nextInt(300) + 50;
      color = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256), 1);
      borderRadius = Random().nextInt(100).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Screen"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.elasticInOut,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadiusDirectional.circular(
                  borderRadius <= 0 ? 0 : borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
