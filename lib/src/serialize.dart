/* This is free and unencumbered software released into the public domain. */

import 'dart:typed_data' show ByteData, Endian, Uint8List;

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
    final result = _input.getUint16(_offset, Endian.little);
    _offset += 2;
    return result;
  }

  int readU32() {
    final result = _input.getUint32(_offset, Endian.little);
    _offset += 4;
    return result;
  }

  int readU64() {
    final result = _input.getUint64(_offset, Endian.little);
    _offset += 8;
    return result;
  }

  BigInt readU128() {
    BigInt result = BigInt.zero;
    for (int i = 15; i >= 0; i--) {
      result += BigInt.from(this.readU8()) << (8 * i);
    }
    return result;
  }

  String readString() {
    //final len = this.readU32();
    return null; // TODO
  }

  Uint8List readFixedArray() {
    return null; // TODO
  }

  List<dynamic> readArray() {
    //final len = this.readU32();
    return null; // TODO
  }
}
