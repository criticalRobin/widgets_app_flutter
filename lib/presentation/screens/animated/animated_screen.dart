import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const name = "animated_screen";

  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Screen"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.lime,
              borderRadius: BorderRadiusDirectional.circular(20)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
