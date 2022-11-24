import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

/// this is helper file for API calls
/// when there is any successful API call,
/// we can simply return [Success] part,
/// or we can return desired data.
@freezed
class Success with _$Success {
  /// use this when you want to navigate
  const factory Success.successful() = _Successful;

  /// use this when you want to show some popup message
  const factory Success.successfulWithMessage(
      {required String successMessage}) = _SuccessfulWithMessage;
}
