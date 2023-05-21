// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 13:46:37

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_avatar_circle.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../actions/index.dart';
import '../containers/user_container.dart';
import '../models/index.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final RegExp _nameRegex = RegExp(r'[a-zA-Z]');
  final RegExp _mobileRegexRo =
  RegExp(r'^(\+4|)?(07[0-8]{1}[0-9]{1}|02[0-9]{2}|03[0-9]{2}){1}?(\s|\.|\-)?([0-9]{3}(\s|\.|\-|)){2}$');
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
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: <Widget>[
                SafeArea(
                  child: Form(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, height * 0.3, 10, 10),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0x22262f4c).withOpacity(0.05),
                                borderRadius: const BorderRadius.all(Radius.circular(13)),
                              ),
                              child: TextFormField(
                                style: const TextStyle(fontFamily: 'Plus'),
                                controller: _fullName,
                                cursorColor: Theme.of(context).secondaryHeaderColor,
                                decoration: InputDecoration(
                                  hintText: user != null ? user.fullname : 'fullname',
                                  hintStyle: TextStyle(color: Theme.of(context).secondaryHeaderColor),
                                  contentPadding: const EdgeInsets.only(left: 20),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0x22262f4c).withOpacity(0.05),
                                borderRadius: const BorderRadius.all(Radius.circular(13)),
                              ),
                              child: TextFormField(
                                style: const TextStyle(fontFamily: 'Plus'),
                                controller: _phoneNumber,
                                cursorColor: Theme.of(context).secondaryHeaderColor,
                                decoration: InputDecoration(
                                  hintText: user != null ? user.phoneNumber : 'mobile',
                                  hintStyle: TextStyle(color: Theme.of(context).secondaryHeaderColor),
                                  contentPadding: const EdgeInsets.only(left: 20),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
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
                                  if (!_nameRegex.hasMatch(_fullName.text)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Please enter a valid name.')));
                                    return;
                                  } else if (!_nameRegex.hasMatch(_fullName.text)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Please enter a valid name.')));
                                    return;
                                  } else if (!_mobileRegexRo.hasMatch(_phoneNumber.text)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Please enter a valid Ro mobile number.')));
                                    return;
                                  }
                                  setState(() => _isLoading = true);
                                  StoreProvider.of<AppState>(context).dispatch(EditProfile(
                                      user!.userId, _fullName.text, _phoneNumber.text, 'photoUrl', _onResult));
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
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              StoreProvider.of<AppState>(context).dispatch(const Signout());
                              Navigator.of(context).pushReplacementNamed('/');
                            },
                            child: const Text(
                              'Sign Out',
                              style: TextStyle(
                                color: Color(0xffa20101),
                                fontSize: 16.0,
                                fontFamily: 'Plus',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppBarUerto(
                  colorFill: Theme.of(context).highlightColor,
                  width: width,
                  height: 320,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 280),
                  child: HexagonalShape(
                      size: 120,
                      colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                      colorStroke: Colors.transparent,
                      angle: 0.20943951,
                      strokeWidth: 0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 280),
                  child: HexagonalShape(
                      size: 50,
                      colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                      colorStroke: Colors.transparent,
                      angle: -0.523598776,
                      strokeWidth: 0),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: SizedBox(
                      height: 45,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              CupertinoIcons.back,
                              color: Theme.of(context).primaryColorDark,
                              size: 30,
                            ),
                            onPressed: () {
                              StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                              Navigator.of(context).pushReplacementNamed('/main');
                            },
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 22,
                              fontFamily: 'Plus',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Theme.of(context).primaryColorDark,
                              size: 30,
                            ),
                            onPressed: () {
                              ///muta l de aici
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (user != null)
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: width / 2 - 40),
                    child: const AvatarCircle(
                      sizeRadius: 40,
                      avatarColorTx: Colors.black,
                      avatarColorBg: Colors.white,
                    ),
                  )
                else
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: width / 2 - 40),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 235, left: (width - 330) / 2),
                  child: Container(
                    alignment: Alignment.center,
                    height: 28,
                    width: 330,
                    child: Text(
                      user != null ? user.email : 'email',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).secondaryHeaderColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 360, left: 320),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: Icon(CupertinoIcons.person, color: Theme.of(context).primaryColor,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 460, left: 320),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: Icon(CupertinoIcons.phone, color: Theme.of(context).primaryColor,),
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
