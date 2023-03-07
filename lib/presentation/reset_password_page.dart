// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 11:00:40

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key ? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

  final TextEditingController _email = TextEditingController();

  bool _isDone = false;


  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xFF4C54EF),
                  Color(0xFF16A5FB),
                ],
              )),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                    child: Container(),
                    flex: 2,
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
                    flex: 70,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 10,
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: TextFormField(
                                  style: const TextStyle(fontFamily: 'FontR'),
                                  controller: _email,
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
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
                              Expanded(
                                flex: 1,
                                child: Container(),
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
                                    child: const Text(
                                      'Back to login',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color(0xFF2989F7),
                                        fontSize: 18,
                                        fontFamily: 'FontR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(),
                                flex: 4,
                              ),

                              ///-----------EMAIL AUTH---------------
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {
                                      if (!Form.of(context).validate() || _isDone) {
                                        return;
                                      }
                                      setState(() => _isDone = true);
                                      StoreProvider.of<AppState>(context).dispatch(ResetPassword(_email.text));
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
                                            colors: !_isDone
                                                ? <Color>[
                                              const Color(0xFF327BF5),
                                              const Color(0xFF258EF8),
                                            ]
                                                : <Color>[
                                              const Color(0x50327BF5),
                                              const Color(0x50258EF8),
                                            ],
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: MediaQuery.of(context).size.height * 0.008,
                                            ),
                                            child: const FittedBox(
                                              child: Text(
                                                'SEND',
                                                style: TextStyle(
                                                  fontFamily: 'FontB',
                                                  color: Colors.white,
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
                                flex: 1,
                                child: Container(),
                              ),
                              if (_isDone)
                                const Text(
                                  'We sent you an email to reset your password ',
                                  style: TextStyle(
                                    fontFamily: 'FontR',
                                    color: Color(0xFF575757),
                                    fontSize: 18,
                                  ),
                                )
                              else
                                Container(),
                              if (_isDone)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      "Didn't recive the mail? ",
                                      style: TextStyle(
                                        fontFamily: 'FontR',
                                        color: Color(0xFF575757),
                                        fontSize: 18,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        StoreProvider.of<AppState>(context).dispatch(ResetPassword(_email.text));
                                      },
                                      child: const Text(
                                        'Send Again',
                                        style: TextStyle(
                                          fontFamily: 'FontB',
                                          color: Color(0xFF2C84F6),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Container(),
                              Expanded(
                                flex: 4,
                                child: Container(),
                              ),
                            ],
                          ),
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
