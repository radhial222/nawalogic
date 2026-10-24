import 'package:flutter/material.dart';

import '../widgets/about_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/hero_section.dart';
import '../widgets/nav_bar.dart';
import '../widgets/services_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _sectionKeys = List.generate(4, (_) => GlobalKey());

  void _scrollTo(int index) {
    final context = _sectionKeys[index].currentContext;
    if (context == null) return;
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(onItemSelected: _scrollTo),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KeyedSubtree(
              key: _sectionKeys[0],
              child: HeroSection(onCtaPressed: () => _scrollTo(3)),
            ),
            KeyedSubtree(key: _sectionKeys[1], child: const ServicesSection()),
            KeyedSubtree(key: _sectionKeys[2], child: const AboutSection()),
            KeyedSubtree(key: _sectionKeys[3], child: const FooterSection()),
          ],
        ),
      ),
    );
  }
}
