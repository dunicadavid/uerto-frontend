// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 12:41:56

import 'package:dotted_line/dotted_line.dart';
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: DrawerHeader(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                  margin: EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      AvatarCircle(
                        sizeRadius: 30,
                        avatarColorBg: Theme.of(context).highlightColor,
                        avatarColorTx: Theme.of(context).secondaryHeaderColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacementNamed('/editProfile'),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Text>[
                            Text(
                              user!.fullname,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              'View profile',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 2.0,
                  dashLength: 4.0,
                  dashColor: Theme.of(context).primaryColorDark,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
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
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_alarm_outlined,
                        size: 20,
                        color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          StoreProvider.of<AppState>(context)
                              .dispatch(GetReservationsFuture(user.userId, 10, _onResultGetReservationsFuture));
                        },
                        child: const Text(
                          'Appointments',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                        ),
                      ),
                    ],
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
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_alarm_rounded,
                        size: 20,
                        color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          StoreProvider.of<AppState>(context)
                              .dispatch(GetReservationsPrevious(user.userId, 10, _onResultGetReservationsPrevious));
                        },
                        child: const Text(
                          'Previous reservations',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                        ),
                      ),
                    ],
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
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.question_answer_outlined,
                        size: 20,
                        color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Support',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 15),
                        ),
                      ),
                    ],
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
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.question_mark_rounded,
                        size: 20,
                        color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'About',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Color(0xFF363636), fontFamily: 'FontR', fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 250,
              ),
              DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Theme.of(context).primaryColorDark,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
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
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.063,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.016,
                          ),
                          child: FittedBox(
                            child: Text(
                              'Enroll it now on Uerto',
                              style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor,
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
              DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Theme.of(context).primaryColorDark,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
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
