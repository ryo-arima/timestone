import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/projects'),
              child: const Text('Go to Details'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/gantt_chart'),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
