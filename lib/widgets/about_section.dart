import 'package:flutter/material.dart';

import '../config/app_config.dart';
import 'section_container.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    final text = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppConfig.aboutTitle,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 16),
        const Text(
          AppConfig.aboutDescription,
          style: TextStyle(fontSize: 16, height: 1.7, color: AppColors.muted),
        ),
      ],
    );
    final stats = Wrap(
      spacing: 32,
      runSpacing: 24,
      children: [
        for (final entry in AppConfig.stats.entries)
          _StatItem(value: entry.key, label: entry.value),
      ],
    );

    return SectionContainer(
      color: AppColors.surface,
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [text, const SizedBox(height: 32), stats],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: text),
                const SizedBox(width: 64),
                stats,
              ],
            ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShaderMask(
          shaderCallback: (rect) => AppColors.gradient.createShader(rect),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
        Text(label, style: const TextStyle(color: AppColors.muted)),
      ],
    );
  }
}
