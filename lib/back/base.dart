import './repository/project.dart';
import './controller/project.dart';
import '../config.dart';

class NewBackEnd {
  final Config config;
  final ProjectRepository projectRepository;
  final ProjectController projectController;
  NewBackEnd(this.config)
      : projectRepository = NewProjectRepository(config),
        projectController = NewProjectController(NewProjectRepository(config));
}
