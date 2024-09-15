import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  Future<void> handleSignIn() async {
    try {
      final GoogleSignInAccount? user = await _googleSignIn.signIn();
      if (user != null) {
        print('Sign-In Successful: ${user.email}, ${user.displayName}');
      } else {
        print('Sign-In Failed: User is null');
      }
    } catch (error) {
      print('Error during sign-in: $error');
    }
  }
}
