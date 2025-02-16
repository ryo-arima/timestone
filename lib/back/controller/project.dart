import '../repository/project.dart';
import '../../../entity/request/project.dart';
import '../../../entity/response/project.dart';

abstract class ProjectController {
  ProjectResponse Get(ProjectRequest request);
  ProjectResponse Create(ProjectRequest request);
  ProjectResponse Update(ProjectRequest request);
  ProjectResponse Delete(ProjectRequest request);
  ProjectController(ProjectRepository repository);
}

class NewProjectController implements ProjectController {
  final ProjectRepository repository;
  NewProjectController(this.repository);
  @override
  ProjectResponse Get(ProjectRequest request) {
    var projects = repository.FindAll();
    return ProjectResponse(projects);
  }

  @override
  ProjectResponse Create(ProjectRequest request) {
    var projects = repository.Create('key');
    return ProjectResponse(projects);
  }

  @override
  ProjectResponse Update(ProjectRequest request) {
    var projects = repository.Update('key');
    return ProjectResponse(projects);
  }

  @override
  ProjectResponse Delete(ProjectRequest request) {
    var projects = repository.Delete('key');
    return ProjectResponse(projects);
  }
}
