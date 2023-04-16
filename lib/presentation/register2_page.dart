// File created by
// Dunica David-Gabriel <FLTY>
// on 08/12/2022 13:52:29

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_formfield.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../actions/index.dart';
import '../models/index.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({Key? key}) : super(key: key);

  @override
  _Register2PageState createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final RegExp _nameRegex = RegExp(r'[a-zA-Z]');
  final RegExp _mobileRegexRo =
      RegExp(r'^(\+4|)?(07[0-8]{1}[0-9]{1}|02[0-9]{2}|03[0-9]{2}){1}?(\s|\.|\-)?([0-9]{3}(\s|\.|\-|)){2}$');
  bool _isLoading = false;
  bool _isDone = true;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
      _isDone = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/permissions');
    }
  }

  @override
  void dispose() {
    _phoneNumber.dispose();
    _firstName.dispose();
    _lastName.dispose();
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
                          color: Theme.of(context).primaryColor,
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 5,
                                ),
                                HexagonalShape(
                                  size: 140,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: TestFormField(
                                    labelText: 'Firstname',
                                    icon: Icons.account_circle_rounded,
                                    textController: _firstName,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: TestFormField(
                                    labelText: 'Lastname',
                                    icon: Icons.account_circle_rounded,
                                    textController: _lastName,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: TestFormField(
                                    labelText: 'Mobile',
                                    icon: Icons.phone,
                                    textController: _phoneNumber,
                                  ),
                                ),
                                const SizedBox(
                                  height: 55,
                                ),
                                Builder(
                                  builder: (BuildContext context) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (!_nameRegex.hasMatch(_firstName.text)) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Please enter a valid name.')));
                                          return;
                                        } else if (!_nameRegex.hasMatch(_firstName.text)) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Please enter a valid name.')));
                                          return;
                                        } else if (!_mobileRegexRo.hasMatch(_phoneNumber.text)) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Please enter a valid Ro mobile number.')));
                                          return;
                                        }

                                        setState(() {
                                          _isLoading = true;
                                          _isDone = false;
                                        });
                                        StoreProvider.of<AppState>(context).dispatch(RegisterPhase2(
                                            '${_firstName.text} ${_lastName.text}', _phoneNumber.text, '', _onResult));
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
                                                            'Continue',
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
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacementNamed('/login');
                                    StoreProvider.of<AppState>(context).dispatch(const Signout());
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontFamily: 'Plus',
                                      color: Color(0xFF575757),
                                      fontSize: 16,
                                    ),
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
              color: Colors.blue.shade100.withOpacity(0.4),
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 200.0, left: 170),
            ),
            Container(
              color: Colors.red,
              height: 2,
              width: width,
              margin: const EdgeInsets.only(top: 775.0),
            ),
            Container(
              color: Colors.red,
              height: 2,
              width: width,
              margin: const EdgeInsets.only(top: 810.0),
            ),
          ],
        ),
      ),
    );
  }
}
