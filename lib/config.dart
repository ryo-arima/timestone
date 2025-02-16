import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class Config {
  final Box box;
  Config(this.box);
}

Future<Config> NewConfig() async {
  var appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Box box = await Hive.openBox('TimeStoneBox');
  Config config = Config(box);
  return config;
}
