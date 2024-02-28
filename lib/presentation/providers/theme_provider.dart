import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// This provider is used to track whether the app is in dark mode or not.
// It returns a boolean value, with 'true' indicating dark mode and 'false' indicating light mode.
final isDarkModeProvider = StateProvider((ref) => false);

// This provider is used to manage the current theme colors of the app.
// It returns an instance of the 'AppColors' class, which contains the color scheme for the app.
final themeProvider = StateProvider((ref) => appColors);

// This provider is used to track the currently selected color in the app.
// It returns an integer that represents the index of the selected color in a color array or list.
final selectedColorProvider = StateProvider((ref) => 0);

// This provider is used to manage the overall theme of the app.
// It returns an instance of the 'ThemeNotifier' class, which contains the logic for changing the app's theme.
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // The constructor initializes the state with the default 'AppTheme'.
  ThemeNotifier() : super(AppTheme());
}
