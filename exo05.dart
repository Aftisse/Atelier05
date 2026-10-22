import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() {
    return "Erreur : le nombre ne doit pas être négatif";
  }
}

void main() {
  try {
    print("Entrez un nombre :");
    double nombre = double.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }

    print("Son carré est : ${nombre * nombre}");
  } on FormatException {
    print("Erreur : entrez un nombre valide");
  } catch (e) {
    print(e);
  } finally {
    print("Fin d'opération");
  }
}