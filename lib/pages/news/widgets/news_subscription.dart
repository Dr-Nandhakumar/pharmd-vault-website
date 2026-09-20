import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class NewsSubscription extends StatelessWidget {
  const NewsSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Center(
        child: SizedBox(
          width: 900,
          child: Column(
            children: [
              const Icon(
                Icons.mark_email_read_outlined,
                color: Colors.white,
                size: 70,
              ),

              const SizedBox(height: 25),

              Text(
                "Stay Connected",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              Text(
                "Subscribe to receive announcements, newsletters, research opportunities, conferences, workshops, educational resources, and publication updates directly from Pharm.D Vault Organization.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white70,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 650,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("Subscribe Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
