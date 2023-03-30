// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 12:41:56

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../../actions/index.dart';
import '../../containers/user_container.dart';
import '../../models/index.dart';
import 'test_avatar_circle.dart';

class DrawerUerto extends StatelessWidget {
  const DrawerUerto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    void _onResultGetReservationsFuture(AppAction action) {
      if (action is ErrorAction) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
      } else {
        Navigator.of(context).pushNamed('/reservationsFuture');
      }
    }

    void _onResultGetReservationsPrevious(AppAction action) {
      if (action is ErrorAction) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
      } else {
        Navigator.of(context).pushNamed('/reservationsPrevious');
      }
    }


    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Drawer(
          child: ListView(
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: DrawerHeader(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                  margin: EdgeInsets.zero,
                  child: Row(
                    children: <Widget>[
                      const AvatarCircle(
                        sizeWidth: 0.068,
                        avatarColorTx: Colors.black,
                        avatarColorBg: Color(0xffEEEEEE),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.148,
                        child: FittedBox(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  child: Text(
                                    user!.fullname.split(' ').first,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'FontR',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacementNamed('/editProfile');
                                  },
                                  child: const Text(
                                    'view profile',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontC',
                                      color: Color(0xFF7B7B7B),
                                      fontWeight: FontWeight.bold,
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
              const Divider(
                height: 0,
                thickness: 2.5,
                color: Color(0xFFB7B7B7),
                endIndent: 15,
                indent: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              const Text(
                'Do you have a business?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'FontC',
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: GestureDetector(
                  onTap: () {
                    ///download aplicatia de locuri
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.063,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFF4C54EF),
                            Color(0xFF1B9EFA),
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.016,
                          ),
                          child: const FittedBox(
                            child: Text(
                              'Enroll it now on Uerto',
                              style: TextStyle(
                                fontFamily: 'FontR',
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              const Divider(
                height: 0,
                thickness: 2.5,
                color: Color(0xFFB7B7B7),
                endIndent: 15,
                indent: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 30,
                  ),
                  child: TextButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(GetReservationsFuture(user.userId, 10,_onResultGetReservationsFuture));
                    },
                    child: const Text(
                      'Appointments',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 30,
                  ),
                  child: TextButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(GetReservationsPrevious(user.userId, 10,_onResultGetReservationsPrevious));
                    },
                    child: const Text(
                      'Previous reservations',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 30,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Support',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 30,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'About',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                height: 250,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 10,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'version: Pre-alpha 1.0.0+1',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black12, fontFamily: 'FontR', fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
