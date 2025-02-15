class Task {
  final String id;
  final String title;
  final String description;
  final String startAt;
  final String endAt;
  final String deadline;
  final List<Task> subTasks;
  final String status;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final String projectId;
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.startAt,
    required this.endAt,
    required this.deadline,
    required this.subTasks,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.projectId,
  });
}
