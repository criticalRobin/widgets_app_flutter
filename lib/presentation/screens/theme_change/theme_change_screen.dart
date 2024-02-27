import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    final themeList = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Temas de la App"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              // ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
            },
          ),
        ],
      ),
      body: const _ThemeChangeView(),
    );
  }
}

class _ThemeChangeView extends ConsumerWidget {
  const _ThemeChangeView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> themeList = ref.watch(themeProvider);

    return ListView.builder(
      itemCount: themeList.length,
      itemBuilder: (context, index) {
        Color color = themeList[index];
        int colorValue = color.value;

        return RadioListTile(
          title: Text(
            "Tema ${index + 1}",
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Color: $colorValue"),
          activeColor: color,
          value: index,
          groupValue: 4,
          onChanged: (value) {},
        );
      },
    );
  }
}
