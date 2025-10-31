import 'package:flutter/material.dart';
import 'discover_screen.dart';

/// Home Screen
/// Main discovery feed with swipeable cards
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // For now, redirect to discover screen
    // TODO: Implement swipeable card stack for main discovery
    return const DiscoverScreen();
  }
}

