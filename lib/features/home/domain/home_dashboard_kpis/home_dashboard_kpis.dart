import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dashboard_kpis.freezed.dart';
part 'home_dashboard_kpis.g.dart';

@freezed
class HomeDashboardKpis with _$HomeDashboardKpis {
  const factory HomeDashboardKpis({
    int? manyStudentConnected,
    int? manyQualificationTeacher,
    int? manySharedDocument,
  }) = _HomeDashboardKpis;

  factory HomeDashboardKpis.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardKpisFromJson(json);
}
