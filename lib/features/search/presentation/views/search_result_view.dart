import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/search/presentation/presentation.dart';

class SearchResultView extends ConsumerStatefulWidget {
  const SearchResultView({super.key});

  static const String name = "search_result_view";
  static const String route = name;

  @override
  ConsumerState<SearchResultView> createState() => _SearchResultViewState();
}

class _SearchResultViewState extends ConsumerState<SearchResultView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchControllerProvider);
    final searchResult = state.searchResult;

    if ((searchResult.teacher?.isEmpty ?? true) &&
        (searchResult.course?.isNotEmpty ?? false)) {
      _tabController.index = 1;
    }

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 165,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(54, 181, 236, 1.000),
                      Color.fromRGBO(47, 163, 240, 1.000),
                      Color.fromRGBO(38, 137, 245, 1.000),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(65))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 4.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      height: 65,
                      width: 343,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(25),
                            bottom: Radius.circular(25)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: TextField(
                                controller: _controller,
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
                              context.pushNamed(SearchResultView.name);
                              ref
                                  .read(searchControllerProvider.notifier)
                                  .search(_controller.text, 0);
                            },
                            icon: SvgPicture.asset(
                                'assets/images/svgs/search.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 0),
              child: TabBar(
                labelColor: const Color.fromRGBO(41, 146, 244, 1.000),
                unselectedLabelColor: AppTheme.student,
                labelStyle: const TextStyle(
                    fontFamily: 'SFProDisplay', fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(
                    fontFamily: 'SFProDisplay', fontWeight: FontWeight.normal),
                indicatorColor: const Color.fromRGBO(41, 146, 244, 1.000),
                padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                tabs: [
                  Tab(
                    text: 'Profesores (${searchResult.totalTeacher ?? 0})',
                  ),
                  Tab(
                    text: 'Cursos (${searchResult.totalCourse ?? 0})',
                  ),
                ],
                controller: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  TeachersTab(
                    teachersSearchResults: searchResult.teacher ?? [],
                  ),
                  CourseTab(
                    coursesSearchResults: searchResult.course ?? [],
                  ),
                ],
              ),
            ),
          ],
        ),
        if (state.searchResultStatus == SearchResultStatus.loading)
          const LoaderTransparent(),
      ],
    );
  }
}
