class MotdepasseCourtException implements Exception {
  String message = "Le mot de passe doit contenir au moins 6 caractères";

  @override
  String toString() {
    return message;
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
  print("Mot de passe valide");
}

void main() {
  try {
    verifierMotdepasse("naser1996");
  } catch (e) {
    print(e);
  }
}