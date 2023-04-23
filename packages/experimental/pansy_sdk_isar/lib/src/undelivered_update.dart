import 'package:isar/isar.dart';

part 'undelivered_update.g.dart';

@collection
class UndeliveredUpdate {
  UndeliveredUpdate(this.data);

  Id? id = Isar.autoIncrement;
  final List<int> data;
}
