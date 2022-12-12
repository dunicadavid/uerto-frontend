// File created by
// Dunica David-Gabriel <FLTY>
// on 08/12/2022 13:52:29

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({Key? key}) : super(key: key);

  @override
  _Register2PageState createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  bool _isLoading = false;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Form(
        child: Column(
          children: [
            SizedBox(height: _height * 0.05,),
            const Text('register db info'),
            SizedBox(height: _height * 0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x22262f4c),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                child: TextFormField(
                  style: const TextStyle(fontFamily: 'Plus'),
                  controller: _fullName,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                    contentPadding: const EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {},
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    } else if (value.length < 4 || value.length > 24) {
                      return 'Name must be between 4 and 24 characters';
                    }

                    if (value.contains(RegExp(r'[!-&]')) ||
                        value.contains(RegExp(r'[(-@]')) ||
                        value.contains(RegExp(r'[[-`]'))) {
                      return 'Name must contain only letters';
                    }

                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: _height * 0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x22262f4c),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                child: TextFormField(
                  style: const TextStyle(fontFamily: 'Plus'),
                  controller: _phoneNumber,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  decoration: InputDecoration(
                    hintText: 'Mobile',
                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                    contentPadding: const EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String value) {},
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length != 10 ||
                        value[0] != '0' ||
                        value[1] != '7' ||
                        value.contains(RegExp(r'[!-/]')) ||
                        value.contains(RegExp(r'[:-~]'))) {
                      return 'Invalid phone number';
                    }

                    return null;
                  },
                ),
              ),
            ),

            SizedBox(height: _height * 0.05,),
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
                    StoreProvider.of<AppState>(context).dispatch(RegisterPhase2(_fullName.text, _phoneNumber.text,'photoUrl', _onResult));
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
            SizedBox(height: _height * 0.05,),
            GestureDetector(
              onTap: () => StoreProvider.of<AppState>(context).dispatch(Signout()),
              child: Text('Cancel'),
            ),
          ],
        ),
      ),),
    );
  }
}