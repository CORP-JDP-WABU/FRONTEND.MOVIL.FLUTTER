import 'package:formz/formz.dart';

enum NewPasswordError { empty, format, length, missingUpperCharacter, missingLowerCharacter, missingNumberCharacter }

class NewPassword extends FormzInput<String, NewPasswordError> {
  const NewPassword.pure() : super.pure('');
  const NewPassword.dirty(String value) : super.dirty(value);

  @override
  NewPasswordError? validator(String value) {
    if (value.trim().isEmpty) return NewPasswordError.empty;
    // if (value.length < 8) return NewPasswordError.length;
    // if (!RegExp(r'[A-Z]').hasMatch(value)) return NewPasswordError.missingUpperCharacter;
    // if (!RegExp(r'[a-z]').hasMatch(value)) return NewPasswordError.missingLowerCharacter;
    // if (!RegExp(r'[0-9]').hasMatch(value)) return NewPasswordError.missingNumberCharacter;
    if (value.length < 8 ||
        !RegExp(r'[A-Z]').hasMatch(value) ||
        !RegExp(r'[a-z]').hasMatch(value) ||
        !RegExp(r'[0-9]').hasMatch(value)) return NewPasswordError.format;

    return null;
  }

  String? getErrorMessage() {
    if (isPure || isValid) return null;
    return switch (displayError) {
      NewPasswordError.empty => 'Campo requerido',
      // NewPasswordError.length => 'La contraseña debe tener al menos 8 caracteres.',
      // NewPasswordError.missingUpperCharacter => 'La contraseña debe contener al menos una letra mayúscula.',
      // NewPasswordError.missingLowerCharacter => 'La contraseña debe contener al menos una letra minúscula.',
      // NewPasswordError.missingNumberCharacter => 'La contraseña debe contener al menos un número.',
      NewPasswordError.format =>
        'Contraseña insegura. Por favor utiliza mínimo de 8 caracteres, una letra mayúscula y una letra minúscula y un número Vuelve a probar con una nueva contraseña',
      _ => null,
    };
  }
}
