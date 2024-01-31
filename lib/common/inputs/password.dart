import 'package:formz/formz.dart';

enum PasswordError { empty, length, format }

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty(String value) : super.dirty(value);

  @override
  PasswordError? validator(String value) {
    if (value.trim().isEmpty) return PasswordError.empty;

    return null;
  }

  String? getErrorMessage() {
    if (isPure || isValid) return null;
    return switch (displayError) {
      PasswordError.empty => 'Campo requerido',
      // PasswordError.length => 'Tamaño',
      // PasswordError.format => 'Formato',
      _ => null,
    };
  }
}
