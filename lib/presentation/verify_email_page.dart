// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:47

import 'dart:async';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
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
  Timer? timerResendEmail;
  bool _isDone = true;
  bool isEmailVerified = false;
  bool canResendEmail = false;
  int _remainingSeconds = 60;

  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();
    }

    timer = Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());
  }

  @override
  void dispose() {
    timerResendEmail?.cancel();
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVerified) {
      timerResendEmail?.cancel();
      timer?.cancel();
      if (!mounted) {
        return; //warning navigator in async function
      }
      Navigator.of(context).pushReplacementNamed('/');
    }
  }

  Future<void> sendVerificationEmail() async {
    try {
      setState(() {
        canResendEmail = false;
        _remainingSeconds = 60;
      });

      final User user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      timerResendEmail = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        setState(() {
          _remainingSeconds--;
        });
        if (_remainingSeconds <= 0) {
          setState(() {
            canResendEmail = true;
            _isDone = false;
          });
          timer.cancel();
        }
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
              ),
              child: SizedBox(
                height: height,
                width: width,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: height * 0.06,
                            child: Text(
                              'Welcome ',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.051,
                            width: height * 0.051,
                            child: FittedBox(
                              child:
                              Image.asset('assets/images/logo-short.png'),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Connect into your account to \ncontinue',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 50,
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: width,
                                  height: 100,
                                ),
                                Container(
                                  color: Colors.blueGrey,
                                  width: 230,
                                  height: 230,
                                ),
                                SizedBox(
                                  width: width,
                                  height: 60,
                                ),
                                const Text(
                                  'We sent you an verification email',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Didn't receive the mail? Send again in ($_remainingSeconds)",
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: width,
                                  height: 30,
                                ),
                                AnimatedOpacity(
                                  opacity: canResendEmail ? 1.0 : 0.0,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                  child: Builder(
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () {
                                          sendVerificationEmail();
                                          setState(() {
                                            _isDone = false;
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: const Duration(milliseconds: 150),
                                          height: height * 0.06,
                                          width: canResendEmail == false ? height * 0.06 : width * 0.5,
                                          onEnd: () => setState(() => _isDone = true),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).secondaryHeaderColor,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                          ),
                                          child: _isDone == false ? Container() : canResendEmail == false
                                                  ? Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: CircularProgressIndicator(
                                                          color: Theme.of(context).primaryColor,
                                                        ),
                                                      ),
                                                    )
                                                  : Align(
                                                      alignment: Alignment.center,
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                          vertical: height * 0.008,
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(),
                                                            ),
                                                            const Text(
                                                              'Resend',
                                                              style: TextStyle(
                                                                color: Color(0xffffffff),
                                                                fontSize: 25.0,
                                                                fontFamily: 'Plus',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right: 7.0),
                                                              child: Container(
                                                                height: height * 0.047,
                                                                width: height * 0.047,
                                                                decoration: BoxDecoration(
                                                                  color: Theme.of(context).primaryColor,
                                                                  borderRadius: const BorderRadius.all(
                                                                    Radius.circular(50),
                                                                  ),
                                                                ),
                                                                child: const Icon(Icons.arrow_forward_rounded),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 200.0, left: 170),
              child: FittedBox(
                child:
                Image.asset('assets/images/image-signs.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
