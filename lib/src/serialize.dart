/* This is free and unencumbered software released into the public domain. */

import 'dart:typed_data' show ByteData, Uint8List;

class BinaryWriter {
  const BinaryWriter();
}

class BinaryReader {
  final ByteData _input;
  int _offset = 0;

  BinaryReader(final Uint8List input) : _input = ByteData.sublistView(input);

  BinaryReader.fromByteData(this._input);

  int readU8() {
    final result = _input.getUint8(_offset);
    _offset += 1;
    return result;
  }

  int readU16() {
    return 0; // TODO
  }

  int readU32() {
    return 0; // TODO
  }

  int readU64() {
    return 0; // TODO
  }

  int readU128() {
    return 0; // TODO
  }

  String readString() {
    return null; // TODO
  }

  Uint8List readFixedArray() {
    return null; // TODO
  }

  List<dynamic> readArray() {
    return null; // TODO
  }
}
