enum VerificationCodeMode { signUp, forgotPassword }

enum UpdateInfoMode { signUp, logIn }

class Globals {
  static String? email;
  static String? newEmail;
  static String? studentId;
  static String? password;
  static VerificationCodeMode? verificationCodeMode;
  static String? universityId;
  static bool? isFirstLogin;
  static UpdateInfoMode? updateInfoMode;
  static String? token;
  static const int maxQualificationValue = 5;
}
