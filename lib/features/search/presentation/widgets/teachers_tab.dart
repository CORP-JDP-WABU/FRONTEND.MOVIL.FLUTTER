import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/search/domain/teachers_search_result/teachers_search_result.dart';
import 'package:wabu/features/search/presentation/controllers/controllers.dart';
import 'package:wabu/features/search/presentation/widgets/teachers_tab_container.dart';
import 'package:wabu/utils/utils.dart';

class TeachersTab extends ConsumerStatefulWidget {
  const TeachersTab({
    super.key,
    required this.teachersSearchResults,
    required this.loadNextPage,
  });

  final List<TeachersSearchResult> teachersSearchResults;
  final VoidCallback loadNextPage;

  @override
  TeachersTabState createState() => TeachersTabState();
}

class TeachersTabState extends ConsumerState<TeachersTab> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        widget.loadNextPage();
      }
    });
  }

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(
          Icons.sort_by_alpha,
          color: Color.fromRGBO(41, 146, 244, 1.000),
        );
      }
      return const Icon(Icons.sort_by_alpha_sharp);
    },
  );

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchControllerProvider);
    final teachersSearchResult = widget.teachersSearchResults;

    return Container(
      child: widget.teachersSearchResults.isNotEmpty
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            FirebaseAnalyticsHandler.instance.logSelectContent(
                              contentType:
                                  AnalyticsContentType.button.contentType,
                              itemId: AnalyticsContentItemId
                                  .teacherSearchRating.itemId,
                            );
                            ref
                                .read(searchControllerProvider.notifier)
                                .orderTeachersListByQualification();
                          },
                          child: Row(
                            children: [
                              const Text('Mejor Calificados'),
                              SvgPicture.asset('assets/images/svgs/star.svg',
                                  color:
                                      const Color.fromRGBO(255, 195, 42, 1.000))
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Switch(
                        thumbIcon: thumbIcon,
                        value: state.isLexicographicallyOrdered,
                        onChanged: (bool value) {
                          FirebaseAnalyticsHandler.instance.logSelectContent(
                            contentType:
                                AnalyticsContentType.button.contentType,
                            itemId: AnalyticsContentItemId
                                .teacherSearchOrder.itemId,
                          );
                          ref
                              .read(searchControllerProvider.notifier)
                              .orderLexicographicallyTeachersList();
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    controller: scrollController,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: teachersSearchResult.length,
                    itemBuilder: (context, index) {
                      return TeachersTabContainer(
                          teacher: teachersSearchResult[index]);
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      'assets/images/svgs/emoji_sad_missing.svg',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'No se encontraron \n profesores con tu \n búsqueda',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(191, 191, 191, 1.000),
                        fontFamily: 'Gotham Rounded',
                        fontSize: 24,
                        height: 30 / 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Intenta buscando con \n menos caracteres',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(191, 191, 191, 1.000),
                        fontFamily: 'Gotham Rounded',
                        fontSize: 24,
                        height: 30 / 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
