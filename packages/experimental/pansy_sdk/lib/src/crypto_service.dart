import 'package:cryptography/cryptography.dart';
import 'package:pansy_sdk/src/vault_constants.dart';

class CryptoService {
  final _symmetricAlgorithm = AesCbc.with128bits(macAlgorithm: MacAlgorithm.empty);

  SecretKey? _encryptionKey;

  Future<void> init(List<int> encryptionKey) async {
    _encryptionKey = await _symmetricAlgorithm.newSecretKeyFromBytes(encryptionKey);
  }

  Future<List<int>> encryptBoxContent(List<int> content) async {
    final encryptionKey = _encryptionKey;

    if (encryptionKey == null) {
      throw Exception('CryptoService is not initialized');
    }

    content = _padBoxContent(content);

    final result = await _symmetricAlgorithm.encrypt(
      content,
      secretKey: encryptionKey,
    );

    final encryptedBoxContent = result.concatenation(mac: false);

    assert(
      encryptedBoxContent.length % VaultConstants.encryptedUnitBoxSize == 0,
      'the encrypted box content length must be a multiple '
      'of VaultConstants.encryptedUnitBoxSize',
    );

    return encryptedBoxContent;
  }

  Future<List<int>> decryptBoxContent(List<int> content) async {
    final encryptionKey = _encryptionKey;

    if (encryptionKey == null) {
      throw Exception('CryptoService is not initialized');
    }

    final rawData = await _symmetricAlgorithm.decrypt(
      SecretBox.fromConcatenation(
        content,
        nonceLength: VaultConstants.ivSize,
        macLength: 0,
      ),
      secretKey: encryptionKey,
    );

    return _unpadBoxContent(rawData);
  }

  static List<int> _padBoxContent(List<int> content) {
    final totalDataLength = VaultConstants.boxHeaderSize + content.length;
    final paddingLength = totalDataLength % VaultConstants.encryptedUnitBoxSize;

    // Calculate padding length
    final byte1 = paddingLength & 0xff;
    final byte2 = (paddingLength >> 8) & 0xff;

    // Prepend padding length and append padding
    return [
      byte1,
      byte2,
      ...content,
      ...List.filled(paddingLength, 0),
    ];
  }

  static List<int> _unpadBoxContent(List<int> content) {
    final paddingLength = content.first + (content[1] << 8);

    return content.sublist(
      VaultConstants.paddingSizeLength,
      content.length - paddingLength,
    );
  }
}
