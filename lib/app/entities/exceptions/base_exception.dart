class BaseException implements Exception {
  final String? message;
  final Error? source;

  const BaseException({
    this.message,
    this.source,
  });
}
