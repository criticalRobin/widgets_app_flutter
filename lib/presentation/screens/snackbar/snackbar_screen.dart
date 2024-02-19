import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    SnackBar snackBar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(label: "Ok!!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar Screen"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackBar(context),
        label: const Text("Show me"),
        icon: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
