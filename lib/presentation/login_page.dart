// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:50:40

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:uerto/models/index.dart';

import '../../actions/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isLoading = false;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {

      if(action.error.toString().split(' ')[0] == 'Deserializing') {
        Navigator.of(context).pushReplacementNamed('/');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account not ready yet')));
      }
      else if (action.error.toString().split(' ')[0] == '[firebase_auth/wrong-password]') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email and password doesn't match")));
      }
      else if (action.error.toString().split(' ')[0] == '[firebase_auth/user-not-found]') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('There is no user with this email')));
      }
      else {
        print('scaffolt');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(action.error.toString().split(' ')[0])));
      }

    } else {
      print('scaffolt2');
      Navigator.of(context).pushReplacementNamed('/');
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
                      child: Icon(CupertinoIcons.ant_circle_fill, color: Colors.white70),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Plus',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Connect into your account to continue',
                    style: TextStyle(
                      color: Color(0x98ebebeb),
                      fontSize: 18,
                      fontFamily: 'Plus',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 5,
                  ),
                  Expanded(
                    flex: 50,
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
                                  style: const TextStyle(fontFamily: 'Plus',fontWeight: FontWeight.bold),
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
                                      return 'Please enter your email';
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
                              flex: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0x22262f4c),
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(fontFamily: 'Plus',fontWeight: FontWeight.bold),
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
                                  onChanged: (String value) {},
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 6 || value.length > 24) {
                                      return 'Password has to be between 6 and 24 characters';
                                    }
                                    return null;
                                  },
                                ),
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
                                    Navigator.of(context).pushReplacementNamed('/resetPassword');
                                  },
                                  child: Text(
                                    'forgot password?',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Plus',
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(),
                            ),

                            ///-----------EMAIL AUTH---------------
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
                                    StoreProvider.of<AppState>(context).dispatch(Login(_email.text, _password.text, _onResult));
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    child: Container(
                                      height: _height * 0.06,
                                      width: _width * 0.8,
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
                                            vertical: _height * 0.008,
                                          ),
                                          child: FittedBox(
                                            child: Text(
                                              'LOGIN',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Plus',
                                                color: Theme.of(context).primaryColor,
                                                fontSize: 28,
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
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    fontFamily: 'Plus',
                                    color: Color(0xFF575757),
                                    fontSize: 16,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/register');
                                  },
                                  child: Text(
                                    'Register',
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
                              flex: 4,
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
