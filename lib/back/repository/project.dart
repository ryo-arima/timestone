import '../../config.dart';
import '../../entity/model/project.dart';

abstract class ProjectRepository {
  List<Project> FindAll();
  List<Project> FindByKey(String key);
  List<Project> Create(String key);
  List<Project> Update(String key);
  List<Project> Delete(String key);
  ProjectRepository(Config config);
}

class NewProjectRepository implements ProjectRepository {
  final Config config;
  NewProjectRepository(this.config);
  @override
  List<Project> FindAll() {
    var projects = config.box.get('projects');
    print('$projects');
    return [];
  }

  List<Project> FindByKey(String key) {
    var projects = config.box.get('projects');
    print('$projects');
    return [];
  }

  List<Project> Create(String key) {
    var projects = config.box.get('projects');
    print('$projects');
    return [];
  }

  List<Project> Update(String key) {
    var projects = config.box.get('projects');
    print('$projects');
    return [];
  }

  List<Project> Delete(String key) {
    var projects = config.box.get('projects');
    print('$projects');
    return [];
  }
}
