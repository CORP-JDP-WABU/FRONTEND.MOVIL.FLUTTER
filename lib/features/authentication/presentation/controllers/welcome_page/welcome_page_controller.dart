import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';

part 'welcome_page_controller.g.dart';

@Riverpod(keepAlive: true)
class WelcomePageController extends _$WelcomePageController {
  @override
  WelcomePageState build() => const WelcomePageState();

  void setPageStatus(WelcomeStatus status) {
    state = state.copyWith(
      status: status,
    );
  }

  void addPage(WelcomePage page) {
    final pagesHistory = state.pagesHistory.toList();
    pagesHistory.add(page);
    state = state.copyWith(
      currentPage: page,
      pagesHistory: pagesHistory,
    );
  }

  void popPage() {
    final pagesHistory = state.pagesHistory.toList();
    pagesHistory.removeLast();
    state = state.copyWith(
      currentPage: pagesHistory.lastOrNull ?? WelcomePage.none,
      pagesHistory: pagesHistory,
    );
  }
}
