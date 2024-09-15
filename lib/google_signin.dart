import 'package:flutter/material.dart';
import 'package:google_signin_with_oauth/auth.dart';

class GoogleSignInPractice extends StatefulWidget {
  const GoogleSignInPractice({super.key});

  @override
  State<GoogleSignInPractice> createState() => _GoogleSignInPracticeState();
}

class _GoogleSignInPracticeState extends State<GoogleSignInPractice> {
  Auth auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  auth.handleSignIn();
                },
                child: const Text("Google SignIn")),
          ),
        ],
      ),
    );
  }
}
