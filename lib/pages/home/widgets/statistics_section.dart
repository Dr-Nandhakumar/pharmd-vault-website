import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.sectionBackground,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      child: Column(
        children: [
          Text(
            "Our Impact",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Empowering Pharmacy Education, Research, and Innovation Worldwide.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 60),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: const [
              _StatCard(
                icon: Icons.article_outlined,
                value: "250+",
                title: "Research Articles",
              ),
              _StatCard(
                icon: Icons.groups_outlined,
                value: "120+",
                title: "Researchers",
              ),
              _StatCard(
                icon: Icons.badge_outlined,
                value: "35+",
                title: "Board Members",
              ),
              _StatCard(
                icon: Icons.school_outlined,
                value: "20+",
                title: "Institutions",
              ),
              _StatCard(icon: Icons.public, value: "18+", title: "Countries"),
              _StatCard(
                icon: Icons.menu_book_outlined,
                value: "5000+",
                title: "Students",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatefulWidget {
  final IconData icon;
  final String value;
  final String title;

  const _StatCard({
    required this.icon,
    required this.value,
    required this.title,
  });

  @override
  State<_StatCard> createState() => _StatCardState();
}

class _StatCardState extends State<_StatCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 220,
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: hover ? 22 : 10,
              offset: Offset(0, hover ? 10 : 5),
            ),
          ],
          border: Border.all(
            color: hover ? AppColors.primary : Colors.grey.shade200,
            width: 1.5,
          ),
        ),
        transform: Matrix4.identity()..translate(0.0, hover ? -8.0 : 0.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary.withValues(alpha: 0.1),
              child: Icon(widget.icon, color: AppColors.primary, size: 30),
            ),
            const SizedBox(height: 20),
            Text(
              widget.value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
