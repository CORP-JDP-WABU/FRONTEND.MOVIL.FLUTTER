import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  static const String name = "terms_screen";
  static const String route = "/$name";

  static const String terms =
      '''Commodo ipsum est qui adipisicing amet pariatur irure cillum nisi et ut tempor. Est proident fugiat amet laboris aliquip elit commodo excepteur aute magna dolore esse. Velit occaecat do in commodo sunt quis ex. Aliqua deserunt proident voluptate non. Irure laborum officia aliqua labore Lorem qui laborum eu exercitation. Ea irure anim culpa mollit duis velit veniam pariatur aliquip minim id.
              In aliqua dolore labore exercitation est irure exercitation. Reprehenderit veniam officia reprehenderit dolore amet dolor. Magna ea esse esse excepteur id in consequat fugiat. Minim tempor sunt reprehenderit amet nisi labore do. Nostrud esse minim deserunt dolore commodo anim aute quis dolore duis commodo laboris sint deserunt. Exercitation incididunt excepteur non laborum eu est est.
              Excepteur fugiat officia do excepteur excepteur ad nisi sint quis non. Non cillum irure laborum aute dolor officia non est ea tempor voluptate amet cupidatat pariatur. Labore cillum aliquip consequat exercitation. Adipisicing ad laborum exercitation excepteur ut.
              Consectetur culpa et proident aliquip velit esse exercitation occaecat aute sint tempor nostrud do occaecat. Eu enim voluptate esse nostrud dolor amet mollit sit commodo ex laboris. Ad qui ullamco aute occaecat anim consectetur in dolore minim ullamco sunt.
              Laborum cupidatat in dolor esse exercitation amet anim laboris tempor. Eu aliqua consectetur eiusmod non. Incididunt consectetur eu in mollit ullamco fugiat qui cupidatat. Deserunt reprehenderit deserunt dolore sunt commodo nisi enim. Mollit consectetur qui cupidatat sunt. Veniam sint est ea laboris duis consectetur aliqua qui deserunt labore laborum.
              Velit aliquip occaecat amet eu cupidatat tempor ullamco aliqua commodo mollit aliquip. Aliquip est Lorem excepteur ut aliqua. Nostrud fugiat commodo pariatur cupidatat aliqua enim ex laboris consectetur. Dolor qui enim proident voluptate consequat eu. Sunt pariatur minim ut duis fugiat ad id ullamco cillum cillum. Enim excepteur nulla ullamco Lorem duis. Tempor mollit officia nostrud eiusmod Lorem.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Términos y Condiciones',
                style: TextStyle(
                  height: 35 / 29,
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Última actualización el 31/12/2023',
                  style: TextStyle(
                    height: 20 / 17,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 2,
                child: Container(color: Colors.grey),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbVisibility: true,
                  thumbColor: AppTheme.termsColor,
                  trackColor: Colors.grey,
                  scrollbarOrientation:
                      ScrollbarOrientation.right, //always show scrollbar
                  thickness: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24, top: 24),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          const Text(terms),
                          const SizedBox(height: 32),
                          CustomFilledButton(
                            text: 'Aceptar y continuar',
                            textColor: Colors.white,
                            linearGradient: const LinearGradient(
                              colors: [
                                AppTheme.linearGradientLight,
                                AppTheme.linearGradientDark
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 1.0],
                            ),
                            onPressed: () => context.pop(true),
                          ),
                          const SizedBox(height: 64),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
