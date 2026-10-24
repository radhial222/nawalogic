import 'package:flutter/material.dart';

import '../config/app_config.dart';
import 'section_container.dart';
import 'service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  static const _spacing = 24.0;

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        children: [
          const Text(
            'Layanan Kami',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = _columnsFor(constraints.maxWidth);
              final cardWidth =
                  (constraints.maxWidth - _spacing * (columns - 1)) / columns;
              return Wrap(
                spacing: _spacing,
                runSpacing: _spacing,
                children: [
                  for (final item in AppConfig.services)
                    SizedBox(width: cardWidth, child: ServiceCard(item: item)),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  int _columnsFor(double width) {
    if (width < Breakpoints.mobile) return 1;
    if (width < Breakpoints.tablet) return 2;
    return 3;
  }
}
