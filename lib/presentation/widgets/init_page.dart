// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:13:11

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uerto/presentation/widgets/verify_email_page.dart';

import '../../containers/user_container.dart';
import '../../models/index.dart';
import 'login_page.dart';
import 'main_page.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const LoginPage();
        } else if(FirebaseAuth.instance.currentUser!.emailVerified) {
          return const MainPage();
        } else {
          return const VerifyEmailPage();
        }
      },
    );
  }
}
