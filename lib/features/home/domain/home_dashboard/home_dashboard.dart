import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/home/domain/domain.dart';

part 'home_dashboard.freezed.dart';
part 'home_dashboard.g.dart';

@freezed
class HomeDashboard with _$HomeDashboard {
  const factory HomeDashboard({
    String? university,
    HomeDashboardKpis? kpis,
    HomeDashboardStudent? student,
  }) = _HomeDashboard;

  factory HomeDashboard.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardFromJson(json);
}
