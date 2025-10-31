import 'package:flutter/material.dart';
import '../../../shared/widgets/app_card.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../design/tokens/app_spacing.dart';

/// Astrology Result Screen
/// Displays AI-generated analysis results
class AstrologyResultScreen extends StatelessWidget {
  final Map<String, dynamic> analysisResult;

  const AstrologyResultScreen({
    super.key,
    required this.analysisResult,
  });

  @override
  Widget build(BuildContext context) {
    final analysis = analysisResult['analysis'] ?? '';
    final score = analysisResult['score'] ?? 0.0;
    final details = analysisResult['details'] ?? <String, dynamic>{};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Analysis'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // TODO: Implement share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Score card
            AppCard(
              child: Column(
                children: [
                  Text(
                    'Analysis Score',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${score.toStringAsFixed(1)}',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // AI Analysis Text
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Personalized Analysis',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    analysis,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Details section
            if (details.isNotEmpty) ...[
              AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    ...details.entries.map((entry) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              '${entry.key}:',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              entry.value.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 32),

            // Action buttons
            AppButton(
              label: 'View Birth Chart',
              onPressed: () {
                // TODO: Navigate to birth chart
              },
              fullWidth: true,
            ),
            const SizedBox(height: 8),
            AppButton(
              label: 'Get Daily Horoscope',
              onPressed: () {
                // TODO: Navigate to daily horoscope
              },
              type: AppButtonType.outlined,
              fullWidth: true,
            ),
          ],
        ),
      ),
    );
  }
}

