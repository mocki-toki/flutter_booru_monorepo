abstract class VaultConstants {
  /// The default port used to interact with a vault server.
  static const defaultVaultPort = 443;

  /// The major vault protocol version.
  ///
  /// Vault server and client with the same protocol version are compatible.
  static const protocolVersion = 1;

  /// The total size of a unit size box including encryption headers.
  ///
  /// If you want to calculate whether data of a certain length will
  /// fit in a unit size box, use the [availableUnitBoxSize] constant instead.
  static const encryptedUnitBoxSize = 1024;

  /// The size of an initialization vector prepended to the data before encryption.
  static const ivSize = 16;

  /// The number of bytes used to store the length of the padding.
  ///
  /// This length will be prepended before the initialisation vector
  /// while padding itself will be appended after the data.
  static const paddingSizeLength = 2;

  /// The total size of the box encryption header.
  static const boxHeaderSize = ivSize + paddingSizeLength;

  /// The size of the data that can be actually stored in a unit size box.
  ///
  /// Can be used to calculate whether data of a certain length
  /// will fit in a unit size box or not.
  ///
  /// Calculated as [encryptedUnitBoxSize] - [boxHeaderSize].
  static const availableUnitBoxSize = encryptedUnitBoxSize - boxHeaderSize;
}
