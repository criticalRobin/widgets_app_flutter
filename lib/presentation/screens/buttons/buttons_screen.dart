import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          // Go back to the previous screen
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Wrap(
          spacing: 5,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
            const ElevatedButton(onPressed: null, child: Text("Disabled")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alarm_add_outlined),
              label: const Text("ELevated Icon"),
            ),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terminal_outlined),
                label: const Text("Filled Icon")),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.umbrella_outlined),
              label: const Text("Outlined Icon"),
            ),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.verified_outlined),
              label: const Text("Text Icon"),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_a_photo_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alarm_outlined),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(color.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                )),
            const MyCustomButton()
            //ToDO Add custom buttons
          ],
        ),
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: color.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Hola mundo!",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
