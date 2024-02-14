import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/student/domain/domain.dart';

part 'home_view_state.freezed.dart';

enum HomeStatus { loading, loaded, error }

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(Student()) Student student,
    @Default(HomeDashboard()) HomeDashboard homeDashboard,
    @Default(HomeStatus.loading) HomeStatus homeStatus,
  }) = _HomeViewState;
}
