import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timestone/back/base.dart';
import 'package:timestone/config.dart';
import '../../entity/request/project.dart';
import '../../entity/response/project.dart';
import '../../entity/model/project.dart';

class HomePage extends StatelessWidget {
  final NewBackEnd backEnd;
  HomePage({required this.backEnd});
  @override
  Widget build(BuildContext context) {
    backEnd.projectController.Get(ProjectRequest(Project(
      id: '1',
      name: 'name',
      description: 'description',
      tasks: [],
      createdAt: '2021-01-01T00:00:00Z',
      updatedAt: '2021-01-01T00:00:00Z',
      deletedAt: '2021-01-01T00:00:00Z',
    )));
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
