import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF4F46E5);
  static const secondary = Color(0xFF06B6D4);
  static const dark = Color(0xFF0F172A);
  static const surface = Color(0xFFF8FAFC);
  static const muted = Color(0xFF64748B);

  static const gradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class Breakpoints {
  static const mobile = 700.0;
  static const tablet = 1024.0;
  static const maxContentWidth = 1200.0;

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < mobile;
}

class ServiceItem {
  final IconData icon;
  final String title;
  final String description;

  const ServiceItem(this.icon, this.title, this.description);
}

class AppConfig {
  static const appName = 'Nawalogic';
  static const tagline = 'Solusi Teknologi untuk Masa Depan Digital';
  static const heroDescription =
      'Nawalogic adalah startup teknologi yang menghadirkan pengembangan '
      'perangkat lunak, transformasi digital, dan berbagai kegiatan inovasi '
      'untuk membantu bisnis tumbuh lebih cepat.';
  static const aboutTitle = 'Tentang Kami';
  static const aboutDescription =
      'Kami adalah tim kreatif dan engineer yang percaya bahwa logika yang '
      'baik melahirkan produk yang hebat. Selain membangun perangkat lunak, '
      'kami aktif dalam pelatihan, komunitas, dan kolaborasi teknologi.';
  static const email = 'hello@nawalogic.com';
  static const copyright = '© 2026 Nawalogic. All rights reserved.';

  static const navItems = ['Beranda', 'Layanan', 'Tentang', 'Kontak'];

  static const services = [
    ServiceItem(Icons.code, 'Pengembangan Software',
        'Aplikasi web, mobile, dan sistem enterprise sesuai kebutuhan bisnis.'),
    ServiceItem(Icons.cloud_outlined, 'Cloud & DevOps',
        'Infrastruktur andal, otomatisasi deployment, dan monitoring.'),
    ServiceItem(Icons.design_services_outlined, 'UI/UX Design',
        'Desain antarmuka yang intuitif dan pengalaman pengguna terbaik.'),
    ServiceItem(Icons.school_outlined, 'Pelatihan & Workshop',
        'Kegiatan edukasi teknologi untuk individu maupun perusahaan.'),
    ServiceItem(Icons.groups_outlined, 'Komunitas & Event',
        'Meetup, hackathon, dan kolaborasi dengan ekosistem startup.'),
    ServiceItem(Icons.lightbulb_outline, 'Konsultasi Teknologi',
        'Strategi dan roadmap transformasi digital untuk bisnis Anda.'),
  ];

  static const stats = {
    '20+': 'Proyek Selesai',
    '10+': 'Klien',
    '5+': 'Tim Ahli',
  };
}

class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        scaffoldBackgroundColor: Colors.white,
      );
}
