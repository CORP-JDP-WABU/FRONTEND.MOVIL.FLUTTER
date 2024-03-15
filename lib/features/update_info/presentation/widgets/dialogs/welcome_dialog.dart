import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/gradient_text.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/utils/utils.dart';

class WelcomeDialog extends StatelessWidget {
  const WelcomeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
          clipBehavior: Clip.none,
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: const LinearGradient(
              colors: [
                AppTheme.linearGradientWelcomeDark,
                AppTheme.linearGradientWelcomeLight
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.8, 1.0],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Bienvenido a ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'GothamRounded',
                ),
              ),
              SvgPicture.asset(
                'assets/images/wabu_brand.svg',
                height: 20,
              ),
              const SizedBox(height: 12),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/v3_wabu.png',
                    height: 52,
                    width: 52,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const GradientText(
                text: '2024',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                gradient: LinearGradient(
                  colors: [
                    AppTheme.linearGradientTeachersDark,
                    AppTheme.linearGradientTeachersLight,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '“Tras un tiempo de transición, de investigación y mejoras, hemos regresado para quedarnos. Esta es la nueva versión de Wabu.”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  height: 17 / 14,
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Poco a poco iremos integrando ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'todas las funcionalidades ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: 'que tenemos para ti e iremos ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'abriendo más universidades.',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Como sabemos que estás en matrículas, ya puedes acceder a ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'calificar profesores ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: 'y ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'buscar sus calificaciones.',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Te recomendamos:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 17 / 14,
                  color: AppTheme.student,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_star.svg',
                    height: 24,
                    width: 24,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Calificar a tus profesores usando nuestro sistema de ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.student,
                            ),
                          ),
                          WidgetSpan(
                            child: GradientText(
                              text: '"SMASH"',
                              gradient: LinearGradient(
                                colors: [
                                  AppTheme.linearGradientSmashPrimary,
                                  AppTheme.linearGradientSmashSecondary,
                                  AppTheme.linearGradientSmashTertiary
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0, 0.3, 1.0],
                              ),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              /* Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_find.svg',
                    height: 32,
                    width: 32,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Usa nuestro Search Engine mejorado para encontrar lo que necesites fácilmente',
                      style: TextStyle(
                        fontSize: 14,
                        height: 17 / 14,
                        color: AppTheme.student,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),*/
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_compare.svg',
                    height: 20,
                    width: 24,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Comparar profesores para que sepas cuál es el mejor para ti usando nuestro sistema de',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.student,
                            ),
                          ),
                          WidgetSpan(
                            child: GradientText(
                              text: '"COMPARE"',
                              gradient: LinearGradient(
                                colors: [
                                  AppTheme.linearGradientTeachersDark,
                                  AppTheme.linearGradientTeachersLight,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0, 1.0],
                              ),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              /* const SizedBox(height: 16),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_soon.svg',
                    height: 15,
                    width: 32,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Pronto nuevas funcionalidades (chat, ) ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 17 / 14,
                        color: AppTheme.student,
                      ),
                    ),
                  )
                ],
              ),*/
              const SizedBox(height: 12),
              CustomFilledButton(
                verticalPadding: 8,
                text: 'Usar WABU 3.0.1',
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
                onPressed: () {
                  FirebaseAnalyticsHandler.instance.logSelectContent(
                    contentType: AnalyticsContentType.button.contentType,
                    itemId: AnalyticsContentItemId.welcome.itemId,
                  );
                  context.go(HomeView.route);
                },
              ),
            ],
          )),
    );
  }
}
