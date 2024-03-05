import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_page_state.freezed.dart';

enum WelcomeStatus { idle, posting, error }
enum WelcomePage { signUp, logIn, forgotPassword, codeValidation, newPassword, none }

@freezed
class WelcomePageState with _$WelcomePageState {
  const factory WelcomePageState({
    @Default(WelcomeStatus.idle) WelcomeStatus status,
    @Default(WelcomePage.none) WelcomePage currentPage,
    @Default([WelcomePage.none]) List<WelcomePage> pagesHistory,
  }) = _WelcomePageState;
}