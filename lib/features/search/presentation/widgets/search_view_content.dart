import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/search/presentation/presentation.dart';

class SearchViewContent extends ConsumerWidget {
  const SearchViewContent({
    super.key,
    required this.controller,
    required this.dashboard,
  });

  final TextEditingController controller;
  final HomeDashboard dashboard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
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
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 93,
                  width: 358,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.21),
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25),
                      bottom: Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    height: 65,
                    width: 343,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: -30,
                          blurRadius: 60,
                          offset: Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                        bottom: Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextField(
                              controller: controller,
                              decoration: const InputDecoration(
                                hintText: 'Busca un curso o profesor',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(191, 191, 191, 1.000),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 17,
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
                            ref
                                .read(searchControllerProvider.notifier)
                                .search(controller.text, 0);
                            context.pushNamed(SearchResultView.name);
                          },
                          icon:
                              SvgPicture.asset('assets/images/svgs/search.svg'),
                        )
                      ],
                    ),
                  ),
                )
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
