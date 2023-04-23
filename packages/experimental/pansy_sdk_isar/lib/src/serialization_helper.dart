// ignore_for_file: invalid_use_of_protected_member

import 'dart:typed_data';

import 'package:isar/isar.dart';

// Можно, если осторожно
import 'package:isar/src/native/isar_writer_impl.dart';
import 'package:isar/src/native/isar_reader_impl.dart';
import 'package:isar/src/native/isar_impl.dart';

class SerializationHelper<T> {
  SerializationHelper(this._schema, IsarImpl isar)
      : _allOffsets = isar.offsets,
        _offsets = isar.offsets[T]!,
        _staticSize = isar.offsets[T]!.last;

  final CollectionSchema<T> _schema;

  final Map<Type, List<int>> _allOffsets;
  final List<int> _offsets;
  final int _staticSize;

  List<int> serialize(T object) {
    final size = _schema.estimateSize(object, _offsets, _allOffsets);
    final buffer = Uint8List(size);
    final writer = IsarWriterImpl(buffer, _staticSize);

    _schema.serialize(object, writer, _offsets, _allOffsets);

    return buffer;
  }

  T deserialize(Id id, Uint8List buffer) {
    final reader = IsarReaderImpl(buffer);

    return _schema.deserialize(id, reader, _offsets, _allOffsets);
  }
}
