import 'dart:io';

void main() {
  print("Entrez votre âge :");

  try {
    int age = int.parse(stdin.readLineSync()!);
    print("Votre âge est $age ans");
  } on FormatException catch (e) {
    print("Erreur : entrez un nombre entier");
  } finally {
    print("Fin d'opération");
  }
}