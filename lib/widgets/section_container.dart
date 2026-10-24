import 'package:flutter/material.dart';

import '../config/app_config.dart';

/// Wraps content with a centered max width and responsive padding.
class SectionContainer extends StatelessWidget {
  final Widget child;
  final Color? color;

  const SectionContainer({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    return Container(
      width: double.infinity,
      color: color,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: isMobile ? 48 : 80,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints:
              const BoxConstraints(maxWidth: Breakpoints.maxContentWidth),
          child: child,
        ),
      ),
    );
  }
}
