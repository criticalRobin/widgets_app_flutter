import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_them.dart';

final isDarkModeProvider = StateProvider((ref) => false);
final themeProvider = StateProvider((ref) => appColors);
