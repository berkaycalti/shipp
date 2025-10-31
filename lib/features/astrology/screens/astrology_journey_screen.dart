import 'package:flutter/material.dart';

/// Personal Astrology Journey Main Screen
/// Entry point for all astrology features
class AstrologyJourneyScreen extends StatelessWidget {
  const AstrologyJourneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Check if user has astrology profile
    // If not, show "Add Profile" screen

    return Scaffold(
      appBar: AppBar(
        title: const Text('Astrology Journey'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Text(
                'Your Astrology Journey',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Discover insights about yourself',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 32),

              // Feature Cards
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _FeatureCard(
                      title: 'Birth Chart',
                      icon: Icons.circle,
                      onTap: () {
                        // TODO: Navigate to birth chart screen
                        // context.push(AppRoutes.birthChart);
                      },
                    ),
                    _FeatureCard(
                      title: 'Daily Horoscope',
                      icon: Icons.star,
                      onTap: () {
                        // TODO: Navigate to daily horoscope screen
                        // context.push(AppRoutes.dailyHoroscope);
                      },
                    ),
                    _FeatureCard(
                      title: 'Daily Advice',
                      icon: Icons.lightbulb,
                      onTap: () {
                        // TODO: Navigate to daily advice screen
                        // context.push(AppRoutes.dailyAdvice);
                      },
                    ),
                    _FeatureCard(
                      title: 'Compatibility',
                      icon: Icons.favorite,
                      onTap: () {
                        // TODO: Navigate to compatibility screen
                        // context.push(AppRoutes.compatibility);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _FeatureCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

