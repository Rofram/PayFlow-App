import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
  ]);

  Future<void> handleGoogleSignIn() async {
    try {
      final response = await _googleSignIn.signIn();
      print(response);
    } catch (error) {
      print(error);
    }
  }
}
