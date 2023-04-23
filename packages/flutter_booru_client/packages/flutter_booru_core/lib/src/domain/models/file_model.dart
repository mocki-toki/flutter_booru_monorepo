import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class FileModel extends Equatable {
  const FileModel({
    required this.uuid,
    required this.url,
  });

  final UuidValue uuid;
  final Uri url;

  @override
  List<Object?> get props => [uuid, url];
}
