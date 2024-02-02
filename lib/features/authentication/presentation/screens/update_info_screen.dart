import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/presentation/controllers/update_info/update_info_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/update_info/update_info_state.dart';
import 'package:wabu/features/authentication/presentation/screens/loader_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/dialogs/welcome_dialog.dart';

class UpdateInfoScreen extends ConsumerStatefulWidget {
  const UpdateInfoScreen({super.key});

  static const String name = 'update_info_screen';
  static const String route = '/$name';

  @override
  ConsumerState<UpdateInfoScreen> createState() => _UpdateInfoScreenState();
}

class _UpdateInfoScreenState extends ConsumerState<UpdateInfoScreen> {
  final titleStyle = const TextStyle(
    color: AppTheme.primaryText,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 48 / 22,
  );

  final dropdownPlaceholderStyle = const TextStyle(
    color: AppTheme.termsLabelColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 14 / 12,
  );

  final border = const StadiumBorder();

  String? universityId;
  String? careerId;
  String? cycleId;
  bool isTermsAccepted = false;
  int? photoIndex;

  FocusNode firstNameNode = FocusNode();
  FocusNode lastNameNode = FocusNode();
  FocusNode aboutMeNode = FocusNode();

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController aboutMeController;

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const WelcomeDialog(),
    );
  }

  @override
  void initState() {
    super.initState();
    photoIndex = Random().nextInt(6) + 1;

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    aboutMeController = TextEditingController();
    // ref.read(updateInfoControllerProvider);
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    aboutMeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UpdateInfoState state = ref.watch(updateInfoControllerProvider);
    firstNameController.text = state.firstName;
    lastNameController.text = state.lastName;
    aboutMeController.text = state.aboutMe;
    universityId = state.univeristy;
    isTermsAccepted = state.isTermsAccepted;

    if (state.careers.length > 1 &&
        state.career != null &&
        state.career!.isNotEmpty) {
      careerId = state.career;
    }
    if (state.cycles.length > 1 && state.cycle != null) {
      cycleId = state.cycle;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.status == Status.valid) {
        openDialog(context);
      }
    });

    return Scaffold(
      body: (state.status == Status.loading)
          ? const LoaderScreen()
          : SingleChildScrollView(
              child: Stack(children: [
                DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Container()),
                Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: AppTheme.headerBackgroundColor,
                    ),
                    child: Container()),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(height: 16),
                        // const CustomBackButton(color: Colors.white),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            'Queremos darte mejores sugerencias. Llena estos datos para personalizar tu experiencia:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              height: 24 / 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/${state.photo}'),
                                radius: 64,
                              ),
                              Positioned(
                                bottom: 0,
                                left: -8,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: const CircleBorder(),
                                    elevation: 5,
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      while (true) {
                                        int newIndex = Random().nextInt(6) + 1;
                                        if (newIndex != photoIndex) {
                                          photoIndex = newIndex;
                                          ref
                                              .read(updateInfoControllerProvider
                                                  .notifier)
                                              .onPhotoChanged(photoIndex!);
                                          break;
                                        }
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.refresh_rounded,
                                    color: AppTheme.greenIconsColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              // width: 120,
                              child: TextFormField(
                                focusNode: firstNameNode,
                                onTapOutside: (event) =>
                                    firstNameNode.unfocus(),
                                style: titleStyle.copyWith(height: 24 / 20),
                                controller: firstNameController,
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(),
                                  enabledBorder: InputBorder.none,
                                  hintText: 'Nombre',
                                ),
                                onChanged: (value) {
                                  ref
                                      .read(
                                          updateInfoControllerProvider.notifier)
                                      .onFirstNameChanged(value);
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              // width: 120,
                              child: TextFormField(
                                onTapOutside: (event) => lastNameNode.unfocus(),
                                focusNode: lastNameNode,
                                style: titleStyle.copyWith(height: 24 / 20),
                                controller: lastNameController,
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(),
                                  enabledBorder: InputBorder.none,
                                  hintText: 'Apellido',
                                ),
                                onChanged: (value) {
                                  ref
                                      .read(
                                          updateInfoControllerProvider.notifier)
                                      .onLastNameChanged(value);
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            IconButton(
                              icon: SvgPicture.asset('assets/images/edit.svg'),
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(firstNameNode);
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Acerca de mi',
                                style: titleStyle,
                              ),
                            ),
                            IconButton(
                              icon: SvgPicture.asset('assets/images/edit.svg'),
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(aboutMeNode);
                              },
                            ),
                          ],
                        ),
                        TextFormField(
                          focusNode: aboutMeNode,
                          maxLength: 300,
                          maxLines: null,
                          style: const TextStyle(
                              height: 14 / 12,
                              fontSize: 12,
                              color: Color.fromARGB(255, 107, 106, 106)),
                          controller: aboutMeController,
                          onTapOutside: (event) {
                            aboutMeNode.unfocus();
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppTheme.student)),
                            hintText: 'Acerca de mi...',
                          ),
                          onChanged: (value) {
                            ref
                                .read(updateInfoControllerProvider.notifier)
                                .onAboutMeChanged(value);
                          },
                        ),
                        Text(
                          'Universidad',
                          style: titleStyle,
                        ),
                        Material(
                          elevation: 12,
                          borderRadius: BorderRadius.circular(12),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                value: universityId,
                                hint: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text('Escoge tu universidad'),
                                ),
                                menuMaxHeight: 4 * 48,
                                focusColor: Colors.grey,
                                elevation: 16,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                style: const TextStyle(
                                  color: AppTheme.termsLabelColor,
                                  fontSize: 12,
                                  height: 14 / 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                onChanged: (Globals.isFirstLogin == false)
                                    ? null
                                    : (String? value) {
                                        setState(() {
                                          ref
                                              .read(updateInfoControllerProvider
                                                  .notifier)
                                              .selectUniversity(value);
                                          // universityId = value;
                                        });
                                      },
                                items: state.universities.map((university) {
                                  return DropdownMenuItem(
                                    value: university.idUniversity,
                                    child: Text(university.name),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Carrera',
                          style: titleStyle,
                        ),
                        Material(
                          elevation: 12,
                          borderRadius: BorderRadius.circular(12),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                value: careerId,
                                hint: const Text('Escoge tu carrera'),
                                menuMaxHeight: 4 * 48,
                                focusColor: Colors.grey,
                                elevation: 16,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                style: const TextStyle(
                                  color: AppTheme.termsLabelColor,
                                  fontSize: 12,
                                  height: 14 / 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    ref
                                        .read(updateInfoControllerProvider
                                            .notifier)
                                        .selectCareer(value);
                                    careerId = value;
                                  });
                                },
                                items: state.careers.map((career) {
                                  return DropdownMenuItem(
                                    value: career.idCareer,
                                    child: Text(career.name),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Año de estudios',
                          style: titleStyle,
                        ),
                        Material(
                          elevation: 12,
                          borderRadius: BorderRadius.circular(12),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                value: cycleId,
                                hint: const Text('Escoge tu año de estudios'),
                                menuMaxHeight: 4 * 48,
                                focusColor: Colors.grey,
                                elevation: 16,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                style: const TextStyle(
                                  color: AppTheme.termsLabelColor,
                                  fontSize: 12,
                                  height: 14 / 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    ref
                                        .read(updateInfoControllerProvider
                                            .notifier)
                                        .selectCycle(value);
                                    cycleId = value;
                                  });
                                },
                                items: state.cycles.map((cycle) {
                                  return DropdownMenuItem(
                                    value: cycle,
                                    child: Text(
                                        cycle ?? 'Escoge tu año de estudios'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                                activeColor: AppTheme.checkboxColor,
                                value: isTermsAccepted,
                                onChanged: (value) {
                                  setState(() {
                                    ref
                                        .read(updateInfoControllerProvider
                                            .notifier)
                                        .acceptTerms(value ?? false);
                                    isTermsAccepted = value ?? false;
                                  });
                                }),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'He leído y acepto los ',
                                      style: TextStyle(
                                        color: AppTheme.primaryText,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        height: 16 / 15,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Términos y Condiciones',
                                      style: const TextStyle(
                                        color: AppTheme.termsColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        height: 16 / 15,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          bool? isTermsAccepted = await context
                                              .push(TermsScreen.route);
                                          ref
                                              .read(updateInfoControllerProvider
                                                  .notifier)
                                              .acceptTerms(
                                                  isTermsAccepted ?? false);
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.center,
                          child: CustomFilledButton(
                            onPressed: (state.isInfoCompleted)
                                ? () => ref
                                    .read(updateInfoControllerProvider.notifier)
                                    .submitUpdatedInfo()
                                : null,
                            text: 'Guardar y continuar',
                            minimumWidth: 220,
                            textColor: Colors.white,
                            backgroundColor:
                                (state.isInfoCompleted) ? null : Colors.grey,
                            linearGradient: (state.isInfoCompleted)
                                ? const LinearGradient(
                                    colors: [
                                      AppTheme.linearGradientLight,
                                      AppTheme.linearGradientDark
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0.0, 1.0],
                                  )
                                : null,
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
    );
  }
}
