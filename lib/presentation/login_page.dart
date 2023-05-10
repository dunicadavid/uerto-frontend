// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:50:40

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:uerto/models/index.dart';
import 'package:uerto/presentation/widgets/test_formfield.dart';

import '../../actions/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final RegExp _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  bool _isLoading = false;
  bool _isDone = true;

  void _onResult(AppAction action) {
    Future<void>.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isLoading = false;
        _isDone = false;
      });
      if (action is ErrorAction) {
        if (action.error.toString().split(' ')[0] == 'Deserializing') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account not ready yet')));
        } else if (action.error.toString().split(' ')[0] == '[firebase_auth/wrong-password]') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email and password doesn't match")));
        } else if (action.error.toString().split(' ')[0] == '[firebase_auth/user-not-found]') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('There is no user with this email')));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(action.error.toString().split(' ')[0])));
        }
      }
      Navigator.of(context).pushReplacementNamed('/');

      ///muta-l dupa ce rezolvi login logic
    });
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
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
                                Expanded(
                                  flex: 10,
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
                                Expanded(
                                  flex: 1,
                                  child: Container(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: TestFormField(
                                    labelText: 'Password',
                                    icon: Icons.password,
                                    textController: _password,
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
                                          color: Theme.of(context).secondaryHeaderColor,
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
                                        } else if (_password.text == null || _password.text.isEmpty) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Please enter your password')));
                                          return;
                                        } else if (_password.text.length < 6 || _password.text.length > 24) {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                              content: Text('Password has to be between 6 and 24 characters')));
                                          return;
                                        }

                                        setState(() {
                                          _isLoading = true;
                                          _isDone = false;
                                        });
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(Login(_email.text, _password.text, _onResult));
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 150),
                                        height: height * 0.06,
                                        width: _isLoading ? height * 0.06 : width * 0.5,
                                        onEnd: () => setState(() => _isDone = true),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).secondaryHeaderColor,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                        ),
                                        child: _isDone == false
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
                                                            'Login',
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
                                  flex: 1,
                                  child: Container(),
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
                                          color: Theme.of(context).highlightColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(),
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
            // Container(
            //   color: Colors.red,
            //   height: 2,
            //   width: width,
            //   margin: const EdgeInsets.only(top: 775.0),
            // ),
            // Container(
            //   color: Colors.red,
            //   height: 2,
            //   width: width,
            //   margin: const EdgeInsets.only(top: 810.0),
            // ),
          ],
        ),
      ),
    );
  }
}
