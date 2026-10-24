import 'package:flutter/material.dart';

import '../config/app_config.dart';
import 'section_container.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark,
      child: const SectionContainer(
        child: Column(
          children: [
            Text(
              'Mari Berkolaborasi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 12),
            SelectableText(
              AppConfig.email,
              style: TextStyle(color: AppColors.secondary, fontSize: 18),
            ),
            SizedBox(height: 32),
            Text(
              AppConfig.copyright,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.muted),
            ),
          ],
        ),
      ),
    );
  }
}
