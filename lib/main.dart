import 'package:flutter/material.dart';
import 'package:timestone/config.dart';
import 'package:go_router/go_router.dart';
import 'package:timestone/back/base.dart';
import 'package:timestone/config.dart';
import 'front/pages/home.dart';
import 'front/pages/projects.dart';
import 'front/pages/gantt_chart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = await NewConfig();
  final backEnd = NewBackEnd(config);
  final GoRouter baseRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage(
          child: HomePage(
            backEnd: backEnd,
          ),
        ),
      ),
      GoRoute(
        path: '/projects',
        pageBuilder: (context, state) => NoTransitionPage(
          child: ProjectsPage(),
        ),
      ),
      GoRoute(
        path: '/gantt_chart',
        pageBuilder: (context, state) => NoTransitionPage(
          child: GanttChartPage(),
        ),
      ),
    ],
  );
  runApp(MyApp(baseRouter));
}

class MyApp extends StatelessWidget {
  final GoRouter baseRouter;
  MyApp(this.baseRouter);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: baseRouter,
      title: 'GoRouter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
