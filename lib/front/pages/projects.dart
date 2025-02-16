import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timestone/front/components/bar.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar(context: context),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
