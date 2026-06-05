import 'package:cross_file/cross_file.dart';

/// Audio-to-text via backend `POST /transcribe` (multipart upload).
///
/// Concrete implementations live in the app (HTTP + auth). The kit depends only
/// on this contract.
abstract class TranscriptionRepository {
  /// Transcribes [audioFile] and returns the plain text result.
  ///
  /// Backend response shape: `{"text": "<transcript>"}`.
  Future<String> transcribe(XFile audioFile);
}
