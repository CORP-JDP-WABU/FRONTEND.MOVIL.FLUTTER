import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';

class NewPasswordContent extends ConsumerWidget {
  const NewPasswordContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final newPasswordState = ref.watch(newPasswordControllerProvider);
    // final email = newPasswordState.email;

    return WelcomeBottomSheetContent(
      title: '¿Olvidaste tu contraseña?',
      body: '¡No te preocupes! Nos pasa a todos. Ingresa tu correo y te ayudaremos.',
      textForms: [
        CustomTextFormField(
          obscureText: false,
          hint: 'Correo Electrónico',
          onChanged: (value) {
            // ref.read(newPasswordControllerProvider.notifier).emailChanged(value);
          },
          // errorMessage: email.getErrorMessage(),
        ),
      ],
      // help: '¿No puedes acceder a tu correo?',
      // onHelpTap: () {},
      button: 'Continuar',
      onButtonTap: () {
        // ref.read(newPasswordControllerProvider.notifier).onSubmit();
        // submit Form
        // ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.codeValidation);
      },
    );

    // const WelcomeBottomSheetContent(
    //     title: 'Ingresa tu nueva contraseña',
    //     textForms: [
    //       // CustomTextFormField(
    //       //   obscureText: true,
    //       //   hint: 'Nueva contraseña',
    //       // ),
    //       // CustomTextFormField(
    //       //   obscureText: true,
    //       //   hint: 'Repite la nueva contraseña',
    //       // ),
    //     ],
    //     button: 'Aceptar',
    //   );
  }
}
