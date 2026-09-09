import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class JoinTeam extends StatelessWidget {
  const JoinTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, Color(0xff0F4C81)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Center(
        child: SizedBox(
          width: 1000,
          child: Column(
            children: [
              const Icon(Icons.groups_rounded, size: 72, color: Colors.white),

              const SizedBox(height: 24),

              Text(
                "Join the Pharm.D Vault Team",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 22),

              Text(
                "We welcome passionate pharmacy students, pharmacists, researchers, academicians, healthcare professionals, and volunteers who wish to contribute to pharmacy education, scientific research, innovation, and community development.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white70,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 50),

              Wrap(
                spacing: 18,
                runSpacing: 18,
                alignment: WrapAlignment.center,
                children: const [
                  _RoleChip(
                    icon: Icons.workspace_premium,
                    label: "Executive Board",
                  ),
                  _RoleChip(icon: Icons.edit_note, label: "Editorial Board"),
                  _RoleChip(icon: Icons.fact_check_outlined, label: "Reviewer"),
                  _RoleChip(icon: Icons.school_outlined, label: "Advisor"),
                  _RoleChip(
                    icon: Icons.volunteer_activism_outlined,
                    label: "Volunteer",
                  ),
                  _RoleChip(
                    icon: Icons.campaign_outlined,
                    label: "Campus Ambassador",
                  ),
                ],
              ),

              const SizedBox(height: 50),

              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/contact'),
                icon: const Icon(Icons.person_add_alt_1),
                label: const Text(
                  "Apply to Join Our Team",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 35),

              Text(
                "Together, we can advance pharmacy education, research excellence, healthcare innovation, and professional collaboration worldwide.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white70,
                  height: 1.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _RoleChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, color: Colors.white, size: 18),
      backgroundColor: Colors.white.withValues(alpha: 0.12),
      side: const BorderSide(color: Colors.white24),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
