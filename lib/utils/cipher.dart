import 'dart:convert';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';

class Cipher {
  static const baseSecret = 'pXJoZtVx1A98r5BSN/PPce9HbDhqQKQySFafIOILHaw=';

  static final Uint8List baseKey = base64.decode(baseSecret);

  static Encrypter createEncrypter([Uint8List? key]) {
    return Encrypter(AES(Key(key ?? baseKey), mode: AESMode.cbc, padding: 'PKCS7'));
  }

  static IV getIV() {
    return IV.fromBase64(base64Encode(baseKey.sublist(0, 16)));
  }

  static String encrypt(String plainText, [Uint8List? key]) {
    final encrypter = createEncrypter(key);
    final encrypted = encrypter.encrypt(plainText, iv: getIV());

    return encrypted.base16;
  }

  static String decrypt(String cypherText, [Uint8List? key]) {
    final encrypter = createEncrypter(key);
    final decrypted = encrypter.decrypt16(cypherText, iv: getIV());

    return decrypted;
  }

  static String encryptMapWithBaseKey(Map<String, dynamic> plainMap) {
    final jsonString = jsonEncode(plainMap).toString();

    return encrypt(jsonString);
  }
}
