import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Estas seguro?"),
              content: const Text("Esto es una prueba"),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text("Cancelar")),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text("Aceptar")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text("Todas las licencias usadas en esta app son")
                  ]);
                },
                child: const Text("Licencias Usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text("Mostrar Diálogo")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackBar(context),
        label: const Text("Show me"),
        icon: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
