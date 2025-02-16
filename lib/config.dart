import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class Config {
  late final Box box;

  Config() {
    _initialize();
  }
  Future<void> _initialize() async {
    var appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    box = await Hive.openBox('TimeStoneBox');
  }
}
