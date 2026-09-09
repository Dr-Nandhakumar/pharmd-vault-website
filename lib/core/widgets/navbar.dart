import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../utils/responsive.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key, this.currentIndex = 0});

  /// Currently selected menu index.
  final int currentIndex;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.navBarBackground,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 2,
      shadowColor: AppColors.cardShadow,

      titleSpacing: Responsive.value(
        context,
        mobile: 16,
        tablet: 24,
        desktop: 40,
      ),

      title: _buildLogo(context),

      actions: Responsive.isDesktop(context)
          ? _buildDesktopMenu(context)
          : [
              Builder(
                builder: (context) => IconButton(
                  tooltip: 'Menu',
                  icon: const Icon(Icons.menu_rounded),
                  color: AppColors.textPrimary,
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
    );
  }

  // ==========================================================
  // Logo
  // ==========================================================

  Widget _buildLogo(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      },
      borderRadius: BorderRadius.circular(12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Hero(
            tag: 'pharmd_logo',
            child: Image.asset(AppAssets.logo, height: 52, fit: BoxFit.contain),
          ),

          const SizedBox(width: 12),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.appName,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              Text(
                'Official Organization',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ==========================================================
  // Desktop Menu
  // ==========================================================

  List<Widget> _buildDesktopMenu(BuildContext context) {
    return [
      _navItem(context, AppStrings.home, 0),
      _navItem(context, AppStrings.about, 1),
      _navItem(context, AppStrings.publications, 2),
      _navItem(context, AppStrings.guidelines, 3),
      _navItem(context, AppStrings.team, 4),
      _navItem(context, AppStrings.news, 5),
      _navItem(context, AppStrings.gallery, 6),
      _navItem(context, AppStrings.contact, 7),

      const SizedBox(width: 24),
    ];
  }

  // ==========================================================
  // Navigation Item
  // ==========================================================

  Widget _navItem(BuildContext context, String title, int index) {
    final bool selected = currentIndex == index;

    return _HoverNavItem(
      title: title,
      selected: selected,
      onTap: () {
        switch (index) {
          case 0:
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            break;

          case 1:
            Navigator.pushNamed(context, '/about');
            break;

          case 2:
            Navigator.pushNamed(context, '/publications');
            break;

          case 3:
            Navigator.pushNamed(context, '/guidelines');
            break;

          case 4:
            Navigator.pushNamed(context, '/team');
            break;

          case 5:
            Navigator.pushNamed(context, '/news');
            break;

          case 6:
            Navigator.pushNamed(context, '/gallery');
            break;

          case 7:
            Navigator.pushNamed(context, '/contact');
            break;
        }
      },
    );
  }

  // ==========================================================
  // Mobile Drawer
  // ==========================================================

  static Drawer buildMobileDrawer(
    BuildContext context, {
    int currentIndex = 0,
  }) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: AppColors.sectionBackground,
              ),
              child: Column(
                children: [
                  Image.asset(AppAssets.logo, height: 90),
                  const SizedBox(height: 16),
                  Text(
                    AppStrings.appName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Official Organization",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _drawerItem(
                    context,
                    Icons.home_rounded,
                    AppStrings.home,
                    currentIndex == 0,
                  ),
                  _drawerItem(
                    context,
                    Icons.info_outline,
                    AppStrings.about,
                    currentIndex == 1,
                  ),
                  _drawerItem(
                    context,
                    Icons.article_outlined,
                    AppStrings.publications,
                    currentIndex == 2,
                  ),
                  _drawerItem(
                    context,
                    Icons.menu_book_outlined,
                    AppStrings.guidelines,
                    currentIndex == 3,
                  ),
                  _drawerItem(
                    context,
                    Icons.groups_outlined,
                    AppStrings.team,
                    currentIndex == 4,
                  ),
                  _drawerItem(
                    context,
                    Icons.campaign_outlined,
                    AppStrings.news,
                    currentIndex == 5,
                  ),
                  _drawerItem(
                    context,
                    Icons.photo_library_outlined,
                    AppStrings.gallery,
                    currentIndex == 6,
                  ),
                  _drawerItem(
                    context,
                    Icons.mail_outline,
                    AppStrings.contact,
                    currentIndex == 7,
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "© 2026 Pharm.D Vault Organization",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ==========================================================
  // Drawer Item
  // ==========================================================

  static Widget _drawerItem(
    BuildContext context,
    IconData icon,
    String title,
    bool selected,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: selected ? AppColors.primary : AppColors.textSecondary,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? AppColors.primary : AppColors.textPrimary,
          fontWeight: selected ? FontWeight.bold : FontWeight.w500,
        ),
      ),
      selected: selected,
      selectedTileColor: AppColors.primary.withValues(alpha: 0.08),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onTap: () {
        final route = switch (title) {
          AppStrings.home => '/',
          AppStrings.about => '/about',
          AppStrings.publications => '/publications',
          AppStrings.guidelines => '/guidelines',
          AppStrings.team => '/team',
          AppStrings.news => '/news',
          AppStrings.gallery => '/gallery',
          AppStrings.contact => '/contact',
          _ => '/',
        };
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}

class _HoverNavItem extends StatefulWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _HoverNavItem({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  State<_HoverNavItem> createState() => _HoverNavItemState();
}

class _HoverNavItemState extends State<_HoverNavItem> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    final active = hovering || widget.selected;

    return MouseRegion(
      onEnter: (_) => setState(() => hovering = true),
      onExit: (_) => setState(() => hovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: active ? AppColors.primary : Colors.transparent,
                width: 3,
              ),
            ),
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 220),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: active ? AppColors.primary : AppColors.textPrimary,
              fontWeight: active ? FontWeight.w700 : FontWeight.w500,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
