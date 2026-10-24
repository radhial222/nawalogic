import 'package:flutter/material.dart';

import '../config/app_config.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function(int index) onItemSelected;

  const NavBar({super.key, required this.onItemSelected});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1,
      toolbarHeight: preferredSize.height,
      title: const Text(
        AppConfig.appName,
        style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w800,
          fontSize: 22,
        ),
      ),
      actions: isMobile
          ? [
              PopupMenuButton<int>(
                icon: const Icon(Icons.menu),
                onSelected: onItemSelected,
                itemBuilder: (_) => [
                  for (var i = 0; i < AppConfig.navItems.length; i++)
                    PopupMenuItem(value: i, child: Text(AppConfig.navItems[i])),
                ],
              ),
            ]
          : [
              for (var i = 0; i < AppConfig.navItems.length; i++)
                TextButton(
                  onPressed: () => onItemSelected(i),
                  child: Text(AppConfig.navItems[i]),
                ),
              const SizedBox(width: 24),
            ],
    );
  }
}
