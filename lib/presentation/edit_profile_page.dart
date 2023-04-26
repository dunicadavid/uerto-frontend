// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 13:46:37

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_avatar_circle.dart';

import '../actions/index.dart';
import '../containers/user_container.dart';
import '../models/index.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
      Navigator.of(context).pushReplacementNamed('/main');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          floatingActionButton: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              mini: true,
              onPressed: () => Navigator.of(context).pushReplacementNamed('/main'),
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).secondaryHeaderColor,
                size: 27,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      height: height * 0.28,
                      width: width,
                      color: Theme.of(context).primaryColor,
                    ),
                    Container(
                      height: height * 0.72,
                      width: width,
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.37, height * 0.28 - width * 0.13, width * 0.37, 0),
                  child: const AvatarCircle(
                    sizeRadius: 40,
                    avatarColorTx: Colors.black,
                    avatarColorBg: Color(0xffEEEEEE),
                  ),
                ),
                SafeArea(
                  child: Form(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, height * 0.3, 10, 10),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              user!.email,
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
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
                                controller: _fullName,
                                cursorColor: Theme.of(context).secondaryHeaderColor,
                                decoration: InputDecoration(
                                  hintText: user.fullname,
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
                          SizedBox(
                            height: height * 0.05,
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
                                controller: _phoneNumber,
                                cursorColor: Theme.of(context).secondaryHeaderColor,
                                decoration: InputDecoration(
                                  hintText: user.phoneNumber,
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
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Builder(
                            builder: (BuildContext context) {
                              if (_isLoading) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Theme.of(context).secondaryHeaderColor,
                                  ),
                                );
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!Form.of(context).validate()) {
                                    return;
                                  }
                                  setState(() => _isLoading = true);
                                  StoreProvider.of<AppState>(context).dispatch(EditProfile(user.userId, _fullName.text, _phoneNumber.text,'photoUrl', _onResult));
                                },
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.06,
                                    width: MediaQuery.of(context).size.width * 0.4,
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
                                            'Edit',
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
                          const SizedBox(height: 100,),
                          GestureDetector(
                              onTap: (){
                                StoreProvider.of<AppState>(context).dispatch(const Signout());
                                Future<void>.delayed(const Duration(milliseconds: 500), () {
                                  Navigator.of(context).pushReplacementNamed('/');
                                });

                              },
                              child: const Text('Sign Out')),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
