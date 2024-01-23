import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'welcome_page_controller.g.dart';

enum WelcomePage { signUp, logIn, forgotPassword, codeValidation, newPassword, none }

@Riverpod(keepAlive: true)
class WelcomePageController extends _$WelcomePageController {
  List<WelcomePage> pagesHistory = [];

  @override
  WelcomePage build() => WelcomePage.none;

  void addPage(WelcomePage page) {
    pagesHistory.add(page);
    state = page;
  }

  void popPage() {
    pagesHistory.removeLast();
    state = pagesHistory.lastOrNull ?? WelcomePage.none;
  }
}
