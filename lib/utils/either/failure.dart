import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// this is helper file for API calls
/// when there is some error while doing api call,
/// we can simply return [Failure] part.
@freezed
class Failure with _$Failure {
  const factory Failure.timedOut() = _TimedOut;
  const factory Failure.networkError() = _NetworkError;
  const factory Failure.serverError() = _ServerError;
  const factory Failure.unexpected({required String errorMsg}) = _Unexpected;
  factory Failure.commonFailure() => const Failure.unexpected(
        errorMsg: 'Some error occurred. Please try again',
      );
  const factory Failure.userNotExist() = _UserNotExist;
}
