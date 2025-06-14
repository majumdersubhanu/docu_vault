import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'config/app_config.dart';
import 'routing/app_router.dart';
import 'ui/core/themes/app_themes.dart';
import 'utils/enums/environment.dart';

Future<void> mainApp({
  required String envFile,
  required Environment environment,
}) async {
  await dotenv.load(fileName: envFile);
  AppConfig.initialize(environment);
  runApp(DocuVaultApp(environment: environment));
}

class DocuVaultApp extends StatelessWidget {
  final Environment environment;
  final _appRouter = AppRouter();

  DocuVaultApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DocuVault',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      routerConfig: _appRouter.config(),
      builder: (context, child) {
        if (environment != Environment.prod) {
          return Banner(
            message: environment.name.toUpperCase(),
            location: BannerLocation.topEnd,
            color: environment == Environment.dev ? Colors.blue : Colors.orange,
            child: child!,
          );
        }
        return child!;
      },
    );
  }
}
