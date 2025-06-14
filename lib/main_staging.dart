import 'package:flutter/material.dart';

import 'routing/app_router.dart';
import 'ui/core/themes/app_themes.dart';

void main() {
  runApp(DocuVaultApp());
}

class DocuVaultApp extends StatelessWidget {
  DocuVaultApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Banner(
      message: 'Staging'.toUpperCase(),
      location: BannerLocation.topEnd,
      color: Colors.orange,
      child: MaterialApp.router(
        title: 'DocuVault',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.lightTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
