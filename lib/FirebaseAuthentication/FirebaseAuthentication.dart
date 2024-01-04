import 'package:firebase_auth/firebase_auth.dart';

class AuthManager {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> registerWithEmailAndPasswordAndPhone(
      String username, String email, String password, String phoneNumber) async {
    try {
      // Créer le compte avec email et mot de passe
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Mettre à jour le profil avec le nom d'utilisateur
      await authResult.user?.updateDisplayName(username);

      // Demander la vérification du numéro de téléphone
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: "verificationId", // Vous devez obtenir ceci à partir du processus de vérification du numéro de téléphone
        smsCode: "smsCode", // Vous devez obtenir ceci à partir du processus de vérification du numéro de téléphone
      );

      // Mettre à jour le numéro de téléphone en liant la nouvelle credential
      await authResult.user?.linkWithCredential(phoneAuthCredential);

      // Retourner l'utilisateur authentifié
      return authResult.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// ... autres méthodes comme signInWithEmailAndPassword, signOut, etc.
}
