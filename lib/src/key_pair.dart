/* This is free and unencumbered software released into the public domain. */

import 'dart:typed_data' show Uint8List;

class Signature {
  final Uint8List signature;
  final PublicKey publicKey;

  Signature(this.signature, this.publicKey);
}

enum KeyType { ED25519 }

class PublicKey {
  final KeyType keyType;
  final Uint8List data;

  PublicKey(this.keyType, this.data);

  static PublicKey fromString(final String encodedKey) {
    return null; // TODO
  }
}

abstract class KeyPair {
  Signature sign(Uint8List message);
  bool verify(Uint8List message, Uint8List signature);
  PublicKey get publicKey;

  static KeyPair fromRandom(final String curve) {
    switch (curve) {
      case 'ED25519':
        return KeyPairEd25519.fromRandom();
      default:
        throw Exception("Unknown curve $curve");
    }
  }

  static KeyPair fromString(final String encodedKey) {
    return null; // TODO
  }
}

class KeyPairEd25519 extends KeyPair {
  PublicKey _publicKey;
  String _secretKey;

  KeyPairEd25519(final String secretKey) : _secretKey = secretKey {
    _publicKey = null; // TODO
  }

  KeyPairEd25519.fromRandom() {
    // TODO
  }

  @override
  Signature sign(final Uint8List message) {
    return null; // TODO
  }

  @override
  bool verify(final Uint8List message, final Uint8List signature) {
    return false; // TODO
  }

  @override
  PublicKey get publicKey => _publicKey;

  @override
  String toString() {
    return "ed25519:$_secretKey";
  }
}
