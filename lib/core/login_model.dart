class LoginModel {
  final String errorSts;
  final String userId;
  final String message;

  LoginModel({
    required this.errorSts,
    required this.userId,
    required this.message,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        errorSts: json["error"],
        userId: json["user_id"],
        message: json["message"],
        );
  }
}
