import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static void hiveInitialise() async {
    final databaseDir = await getApplicationDocumentsDirectory();
    Hive.init(databaseDir.path);
  }
}
