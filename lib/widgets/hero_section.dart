import 'package:flutter/material.dart';

import '../config/app_config.dart';
import 'section_container.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onCtaPressed;

  const HeroSection({super.key, required this.onCtaPressed});

  @override
  Widget build(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradient),
      child: SectionContainer(
        child: Column(
          children: [
            Text(
              AppConfig.tagline,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 32 : 56,
                fontWeight: FontWeight.w800,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 24),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: Text(
                AppConfig.heroDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: isMobile ? 16 : 20,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: onCtaPressed,
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColors.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              ),
              child: const Text('Hubungi Kami'),
            ),
          ],
        ),
      ),
    );
  }
}
