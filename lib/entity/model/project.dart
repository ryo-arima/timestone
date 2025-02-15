import './task.dart';

class Project {
  final String id;
  final String name;
  final String description;
  final List<Task> tasks;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  Project({
    required this.id,
    required this.name,
    required this.description,
    required this.tasks,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });
}
