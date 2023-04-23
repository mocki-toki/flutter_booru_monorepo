import 'package:isar/isar.dart';

part 'applied_update.g.dart';

@collection
class AppliedUpdate {
  AppliedUpdate(this.updateBoxId);

  Id? id = Isar.autoIncrement;

  @Index(unique: true)
  final String updateBoxId;
}
