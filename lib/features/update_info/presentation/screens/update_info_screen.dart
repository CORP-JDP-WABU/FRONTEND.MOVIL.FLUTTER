import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/presentation/screens/loader_screen.dart';
import 'package:wabu/features/update_info/update_info.dart';
import 'package:wabu/features/university/university.dart';
import 'package:wabu/utils/utils.dart';

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

  bool isTermsAccepted = false;
  int? photoIndex;
  String photo = '';

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
    photoIndex = Random().nextInt(20) + 1;

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
    final state = ref.watch(updateInfoControllerProvider);
    firstNameController.text = state.firstName;
    lastNameController.text = state.lastName;
    aboutMeController.text = state.aboutMe;
    isTermsAccepted = state.isTermsAccepted;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.status == Status.valid) {
        openDialog(context);
      }
    });

    return Scaffold(
      body: (state.status == Status.loading)
          ? const LoaderScreen()
          : SingleChildScrollView(
              child: Stack(
                children: [
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
                                  backgroundImage: NetworkImage(state.photo),
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
                                          int newIndex =
                                              Random().nextInt(20) + 1;
                                          if (newIndex != photoIndex) {
                                            photoIndex = newIndex;
                                            ref
                                                .read(
                                                    updateInfoControllerProvider
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
                                        .read(updateInfoControllerProvider
                                            .notifier)
                                        .onFirstNameChanged(value);
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                // width: 120,
                                child: TextFormField(
                                  onTapOutside: (event) =>
                                      lastNameNode.unfocus(),
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
                                        .read(updateInfoControllerProvider
                                            .notifier)
                                        .onLastNameChanged(value);
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                icon:
                                    SvgPicture.asset('assets/images/edit.svg'),
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
                                icon:
                                    SvgPicture.asset('assets/images/edit.svg'),
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
                                borderSide: BorderSide(color: AppTheme.student),
                              ),
                              hintText: 'Acerca de mi...',
                            ),
                            onChanged: (value) {
                              ref
                                  .read(updateInfoControllerProvider.notifier)
                                  .onAboutMeChanged(value);
                            },
                          ),
                          UpdateInfoDropdown(
                            labelText: 'Universidad',
                            hintText: 'Escoge tu universidad',
                            value: state.university,
                            onChanged: (Globals.isFirstLogin == true)
                                ? null
                                : (String? value) {
                                    setState(() {
                                      ref
                                          .read(updateInfoControllerProvider
                                              .notifier)
                                          .selectUniversity(value);
                                    });
                                  },
                            items: state.universities.map((university) {
                              return DropdownMenuItem(
                                onTap: (university.idUniversity == '-1')
                                    ? () {
                                        FirebaseAnalyticsHandler.instance
                                            .logSelectContent(
                                          contentType: AnalyticsContentType
                                              .option.contentType,
                                          itemId: AnalyticsContentItemId
                                              .noUniversity.itemId,
                                        );
                                        context.pushNamed(
                                            AddUniversityScreen.name);
                                      }
                                    : null,
                                value: university.idUniversity,
                                child: Text(university.name),
                              );
                            }).toList(),
                          ),
                          UpdateInfoDropdown(
                            labelText: 'Carrera',
                            hintText: 'Escoge tu carrera',
                            value: state.career,
                            onChanged: (value) {
                              ref
                                  .read(updateInfoControllerProvider.notifier)
                                  .selectCareer(value);
                            },
                            items: state.careers.map((career) {
                              return DropdownMenuItem(
                                value: career.idCareer,
                                child: Text(career.name),
                              );
                            }).toList(),
                          ),
                          UpdateInfoDropdown(
                            labelText: 'Año de estudios',
                            hintText: 'Escoge tu año de estudios',
                            value: state.cycle,
                            onChanged: (value) {
                              ref
                                  .read(updateInfoControllerProvider.notifier)
                                  .selectCycle(value);
                            },
                            items: state.cycles.map((cycle) {
                              return DropdownMenuItem(
                                value: cycle,
                                child:
                                    Text(cycle ?? 'Escoge tu año de estudios'),
                              );
                            }).toList(),
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
                                            FirebaseAnalyticsHandler.instance
                                                .logSelectContent(
                                              contentType: AnalyticsContentType
                                                  .button.contentType,
                                              itemId: AnalyticsContentItemId
                                                  .seeTerms.itemId,
                                            );
                                            var url = Uri.parse(
                                                'https://drive.google.com/file/d/1JCpA0nO3-mSyrNwnSLfM3gox21Grqxub/view?usp=sharing');

                                            if (await canLaunchUrl(url)) {
                                              await launchUrl(url);
                                            }

                                            // bool? isTermsAccepted = await context
                                            //     .push(TermsScreen.route);
                                            // ref
                                            //     .read(updateInfoControllerProvider
                                            //         .notifier)
                                            //     .acceptTerms(
                                            //         isTermsAccepted ?? false);
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
                                  ? () {
                                      FirebaseAnalyticsHandler.instance
                                          .logSelectContent(
                                        contentType: AnalyticsContentType
                                            .button.contentType,
                                        itemId: AnalyticsContentItemId
                                            .saveInfo.itemId,
                                      );
                                      ref
                                          .read(updateInfoControllerProvider
                                              .notifier)
                                          .submitUpdatedInfo();
                                    }
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
                ],
              ),
            ),
    );
  }
}
