import 'package:flutter/material.dart';

import 'config/app_config.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const NawalogicApp());
}

class NawalogicApp extends StatelessWidget {
  const NawalogicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}
