import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surface,
      elevation: 1,
      iconTheme: const IconThemeData(color: AppColors.secondary),
      titleTextStyle: AppTextStyles.titleLarge.copyWith(
        color: AppColors.secondary,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
      error: AppColors.error,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.displayLarge.copyWith(
        color: AppColors.secondary,
      ),
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.secondary),
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.secondary),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.secondary),
      labelLarge: AppTextStyles.labelLarge.copyWith(color: AppColors.secondary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
      filled: true,
      fillColor: AppColors.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.secondary),
    ),
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      elevation: 1,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: AppTextStyles.titleLarge.copyWith(color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.darkSecondary,
      surface: AppColors.darkSurface,
      error: AppColors.error,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.displayLarge.copyWith(color: Colors.white),
      titleLarge: AppTextStyles.titleLarge.copyWith(color: Colors.white),
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: Colors.white),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
      labelLarge: AppTextStyles.labelLarge.copyWith(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
      filled: true,
      fillColor: AppColors.darkSurface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
    ),
    cardTheme: CardThemeData(
      color: AppColors.darkSurface,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  );
}
