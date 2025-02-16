import '../../config.dart';
import '../../entity/model/project.dart';

abstract class ProjectRepository {
  Future<List<Project>> FindAll();
  List<Project> FindByKey(String key);
  List<Project> Create(Project project);
  List<Project> Update(Project project);
  List<Project> Delete(String key);
  ProjectRepository(Config config);
}

class NewProjectRepository implements ProjectRepository {
  final Config config;
  NewProjectRepository(this.config);

  @override
  Future<List<Project>> FindAll() async {
    var projects = await config.box.get('projects') as List<Project>;
    print('$projects');
    return projects;
  }

  @override
  List<Project> FindByKey(String key) {
    var projects = config.box.get('projects') as List<Project>;
    var result = projects.where((project) => project.id == key).toList();
    print('$result');
    return result;
  }

  @override
  List<Project> Create(Project project) {
    var projects = config.box.get('projects') as List<Project>;
    projects.add(project);
    config.box.put('projects', projects);
    print('$projects');
    return projects;
  }

  @override
  List<Project> Update(Project project) {
    var projects = config.box.get('projects') as List<Project>;
    var index = projects.indexWhere((p) => p.id == project.id);
    if (index != -1) {
      projects[index] = project;
      config.box.put('projects', projects);
    }
    print('$projects');
    return projects;
  }

  @override
  List<Project> Delete(String key) {
    var projects = config.box.get('projects') as List<Project>;
    projects.removeWhere((project) => project.id == key);
    config.box.put('projects', projects);
    print('$projects');
    return projects;
  }
}
