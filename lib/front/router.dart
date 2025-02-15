import 'package:go_router/go_router.dart';
import 'pages/home.dart';
import 'pages/projects.dart';
import 'pages/gantt_chart.dart';

// GoRouter ‚ÌÝ’è
final GoRouter baseRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage(
        child: HomePage(),
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
