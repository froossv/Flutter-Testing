import 'package:unit_testing/utils/fieldValidator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Email', () {
    test('Empty Email Test', () {
      var result = FieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });

    test('Invalid Email Test', () {
      var result = FieldValidator.validateEmail('abc.com');
      expect(result, 'Enter Valid Email');
    });

    test('Valid Email Test', () {
      var result = FieldValidator.validateEmail('abc@gmail.com');
      expect(result, null);
    });
  });

  group('Password', () {
    test('Empty Password Test', () {
      var result = FieldValidator.validatePassword('');
      expect(result, 'Enter Password');
    });

    test('Password Length Test', () {
      var result = FieldValidator.validatePassword('aab');
      expect(result, 'Short Password!');
    });

    test('Valid Password Test', () {
      var result = FieldValidator.validatePassword('qweertyuiop');
      expect(result, null);
    });
  });
}
