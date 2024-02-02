import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/gradient_text.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';

class WelcomeDialog extends StatelessWidget {
  const WelcomeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
          clipBehavior: Clip.none,
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(24),
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
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  const Text(
                    'Bienvenido a ',
                    style: TextStyle(
                      fontSize: 28,
                      height: 32 / 28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'GothamRounded',
                    ),
                  ),
                  SvgPicture.asset('assets/images/wabu_brand.svg')
                ],
              ),
              const SizedBox(height: 16),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/v3_wabu.png',
                    height: 86,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // const SizedBox(height: 4),
              const GradientText(
                text: '2024',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
              const SizedBox(height: 20),
              const Text('"Mensaje del equipo\nMensaje del equipo'),
              const SizedBox(height: 20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_star.svg',
                    height: 30,
                    width: 32,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Califica profesores usando nuestro sistema de ',
                            style: TextStyle(
                              fontSize: 14,
                              height: 17 / 14,
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
                                fontSize: 14,
                                height: 17 / 14,
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
              const SizedBox(height: 16),
              Row(
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
              const SizedBox(height: 16),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/welcome_compare.svg',
                    height: 25,
                    width: 32,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Compara a los profesores que quieras para saber cuál te conviene más, usando el ',
                            style: TextStyle(
                              fontSize: 14,
                              height: 17 / 14,
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
                                fontSize: 14,
                                height: 17 / 14,
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
              const SizedBox(height: 16),
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
              ),
              const SizedBox(height: 24),
              CustomFilledButton(
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
                onPressed: () => context.go(HomeView.route),
              ),
            ],
          )),
    );
  }
}