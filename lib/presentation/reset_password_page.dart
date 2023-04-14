// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 11:00:40

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_formfield.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final RegExp _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final TextEditingController _email = TextEditingController();
  late int _remainingSeconds = 60;
  bool _isDoneAnimation = true;
  bool _isLoading = false;
  bool _isDone = false;

  void _startTimer() {
    _remainingSeconds = 60;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _remainingSeconds--;
      });
      if (_remainingSeconds <= 0) {
        setState(() {
          _isDoneAnimation = false;
          _isLoading = false;
        });
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
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
              color: Theme.of(context).highlightColor,
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
                                  Icon(CupertinoIcons.ant_circle_fill, color: Theme.of(context).secondaryHeaderColor),
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
                          color: Colors.white,
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 17,
                                  child: Container(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: TestFormField(
                                    labelText: 'Email',
                                    icon: Icons.attach_email_rounded,
                                    textController: _email,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      15,
                                      30,
                                      0,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushReplacementNamed('/login');
                                      },
                                      child: Text(
                                        'Back to login',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Plus',
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).secondaryHeaderColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(),
                                ),
                                Builder(
                                  builder: (BuildContext context) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (_email.text == null || _email.text.isEmpty) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(content: Text('Please enter your email')));
                                          return;
                                        } else if (!_emailRegex.hasMatch(_email.text)) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Please enter a valid email address')));
                                          return;
                                        }

                                        setState(() {
                                          _isLoading = true;
                                          _isDoneAnimation = false;
                                          _isDone = true;
                                        });
                                        _startTimer();
                                        StoreProvider.of<AppState>(context).dispatch(ResetPassword(_email.text));
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 150),
                                        height: height * 0.06,
                                        width: _isLoading ? height * 0.06 : width * 0.5,
                                        onEnd: () => setState(() => _isDoneAnimation = true),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).secondaryHeaderColor,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                        ),
                                        child: _isDoneAnimation == false
                                            ? Container()
                                            : _isLoading
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
                                                            'Send',
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
                                Expanded(
                                  flex: 4,
                                  child: Container(),
                                ),
                                AnimatedDefaultTextStyle(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: _isDone ? Theme.of(context).secondaryHeaderColor : Colors.transparent,
                                  ),
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                  child: const Text('We sent you an email to reset your password'),
                                ),
                                AnimatedDefaultTextStyle(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: _isDone ? Theme.of(context).secondaryHeaderColor : Colors.transparent,
                                  ),
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                  child: Text("Didn't receive the mail? Send again in ($_remainingSeconds)"),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
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
              color: Colors.blue.shade100,
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 200.0, left: 170),
            ),
          ],
        ),
      ),
    );
  }
}
