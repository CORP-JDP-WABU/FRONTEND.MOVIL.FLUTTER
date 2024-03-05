import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/features/authentication/presentation/controllers/new_password/new_password_controller.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';

class NewPasswordContent extends ConsumerWidget {
  const NewPasswordContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newPasswordState = ref.watch(newPasswordControllerProvider);
    final newPassword = newPasswordState.newPassword;
    final confirmNewPassword = newPasswordState.confirmNewPassword;

    return WelcomeBottomSheetContent(
      title: 'Ingresa tu nueva contraseña',
      textForms: [
        CustomTextFormField(
          obscureText: true,
          hint: 'Nueva contraseña',
          onChanged: (value) {
            ref
                .read(newPasswordControllerProvider.notifier)
                .newPasswordChanged(value);
          },
          errorMessage: newPassword.getErrorMessage(),
        ),
        CustomTextFormField(
          obscureText: true,
          hint: 'Repite la nueva contraseña',
          onChanged: (value) {
            ref
                .read(newPasswordControllerProvider.notifier)
                .confirmNewPasswordChanged(value);
          },
          errorMessage: confirmNewPassword.getErrorMessage(),
        ),
      ],
      utilError: (!newPassword.isPure &&
              !confirmNewPassword.isPure &&
              newPassword.value != confirmNewPassword.value)
          ? 'Las constraseñas no coinciden'
          : null,
      button: 'Aceptar',
      onButtonTap: () {
        ref.read(newPasswordControllerProvider.notifier).onSubmit();
      },
    );
  }
}
