import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const PharmDVaultWebsite());
}

class PharmDVaultWebsite extends StatelessWidget {
  const PharmDVaultWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharm.D Vault Organization',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      initialRoute: AppRoutes.home,

      routes: AppRoutes.routes,
    );
  }
}
