// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:47

import 'dart:async';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/presentation/init_page.dart';

import '../../models/index.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  Timer? timer;
  bool isEmailVerified = false;
  bool canResendEmail = false;

  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if(!isEmailVerified) {
      sendVerificationEmail();
    }

    timer = Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());

  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async{
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if(isEmailVerified) {
      timer?.cancel();
    }

  }

  Future<void> sendVerificationEmail() async{
    try {
      final User user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() {
        canResendEmail = false;
      });
      await Future<dynamic>.delayed(const Duration(seconds: 5));
      setState(() {
        canResendEmail = true;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
    }
  }

  @override
  Widget build(BuildContext context) => isEmailVerified ? const InitPage() : Scaffold(
      body: SafeArea(child: Column(
        children: [
          const Text('VERIFY EMAIL PAGE'),
          GestureDetector(
            onTap: () => canResendEmail ? StoreProvider.of<AppState>(context).dispatch(const EmailVerify()) : (){},
            child: const Text('resend email'),
          ),
          GestureDetector(
            onTap: () => StoreProvider.of<AppState>(context).dispatch(const Signout()),
            child: const Text('cancel'),
          )
        ],
      )),
    );
}