import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/search/presentation/presentation.dart';

class SearchViewContent extends StatelessWidget {
  const SearchViewContent({
    super.key,
    required this.controller,
    required this.dashboard,
  });

  final TextEditingController controller;
  final HomeDashboard dashboard;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            const Text(
              '¡Comienza\nTu Búsqueda!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GothamRounded',
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    height: 65,
                    width: 343,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                            bottom: Radius.circular(25))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: TextField(
                              controller: controller,
                              decoration: const InputDecoration(
                                hintText: 'Busca un curso o profesor...',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(191, 191, 191, 1.000),
                                  fontFamily: 'Gotham Rounded',
                                  fontSize: 16,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            context.pushNamed(SearchResult.name);
                          },
                          icon:
                              SvgPicture.asset('assets/images/svgs/search.svg'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            _SearchDashboard(dashboard: dashboard),
            const SizedBox(height: 20),
            Expanded(
              child: SvgPicture.asset('assets/images/svgs/team_work.svg'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchDashboard extends StatelessWidget {
  const _SearchDashboard({
    required this.dashboard,
  });

  final HomeDashboard dashboard;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SearchDashboardItem(
          linearGradient: teachersDashboardLinearGradient,
          label: 'Calificaciones a profesores',
          iconAssetPath: 'assets/images/svgs/teachers_dashboard.svg',
          value: dashboard.kpis?.manyQualificationTeacher ?? 0,
        ),
        const SizedBox(width: 16),
        SearchDashboardItem(
          linearGradient: documentsDashboardLinearGradient,
          label: 'Documentos subidos',
          iconAssetPath: 'assets/images/svgs/documents_dashboard.svg',
          value: dashboard.kpis?.manySharedDocument ?? 0,
        ),
      ],
    );
  }
}
