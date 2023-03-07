// File created by
// Dunica David-Gabriel <FLTY>
// on 07/12/2022 13:08:37

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _rePassword = TextEditingController();
  bool _isLoading = false;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      //StoreProvider.of<AppState>(context).dispatch(const VerifyEmail());
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: SizedBox(
            height: _height,
            width: _width,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(),
                    flex: 4,
                  ),
                  SizedBox(
                    height: _height * 0.1,
                    width: _height * 0.1,
                    child: const FittedBox(
                      child: Icon(CupertinoIcons.camera_circle_fill, color: Colors.white70),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 3,
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Create an account to continue',
                    style: TextStyle(color: Color(0x98ebebeb), fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 6,
                  ),
                  Expanded(
                    flex: 80,
                    child: Container(
                      color: const Color(0xffF0F0F0),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(),
                              flex: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0x22262f4c),
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(fontFamily: 'Plus'),
                                  controller: _email,
                                  cursorColor: Theme.of(context).secondaryHeaderColor,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (String value) {},
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter an email address';
                                    } else if (!value.contains('@') || !value.contains('.')) {
                                      return 'Please enter a valid email address';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),


                            Expanded(
                              child: Container(),
                              flex: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0x22262f4c),
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(fontFamily: 'Plus'),
                                  controller: _password,
                                  cursorColor: Theme.of(context).secondaryHeaderColor,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a password';
                                    } else if (value.length < 6 || value.length > 24) {
                                      return 'Password has to be between 6 and 24 characters';
                                    }

                                    if (!value.contains(RegExp(r'[!-`]'))) {
                                      return 'Password must contain a capital letter, a number or a symbol';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0x22262f4c),
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(fontFamily: 'Plus'),
                                  controller: _rePassword,
                                  cursorColor: Theme.of(context).secondaryHeaderColor,
                                  decoration: InputDecoration(
                                    hintText: 'rePasswords',
                                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  validator: (String? value) {
                                    if (value != _password.text) {
                                      return "Password doesn't match";
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 8,
                            ),
                            Builder(
                              builder: (BuildContext context) {
                                if (_isLoading) {
                                  return Center(
                                    child: CircularProgressIndicator(color: Theme.of(context).secondaryHeaderColor,),
                                  );
                                }
                                return GestureDetector(
                                  onTap: () {
                                    if (!Form.of(context).validate()) {
                                      return;
                                    }
                                    setState(() => _isLoading = true);
                                    StoreProvider.of<AppState>(context).dispatch(RegisterPhase1(
                                        _email.text, _password.text, _onResult));
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height * 0.06,
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: <Color>[
                                            Theme.of(context).secondaryHeaderColor,
                                            Theme.of(context).secondaryHeaderColor,
                                          ],
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: MediaQuery.of(context).size.height * 0.008,
                                          ),
                                          child: FittedBox(
                                            child: Text(
                                              'SIGN UP',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Plus',
                                                color: Theme.of(context).primaryColor,
                                                fontSize: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            Expanded(
                              child: Container(),
                              flex: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Do you have an account? ',
                                  style: TextStyle(
                                    fontFamily: 'Plus',
                                    color: Color(0xFF575757),
                                    fontSize: 16,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/');
                                  },
                                  child: Text(
                                    'LogIn',
                                    style: TextStyle(
                                      fontFamily: 'Plus',
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).secondaryHeaderColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(),
                              flex: 6,
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
      ),
    );
  }
}