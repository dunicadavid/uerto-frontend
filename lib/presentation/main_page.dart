// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:43

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/presentation/widgets/test_avatar_circle.dart';
import 'package:uerto/presentation/widgets/test_drawer.dart';

import '../../containers/user_container.dart';
import '../../models/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        //Navigator.of(context).pushReplacementNamed('/');
        break;
      case 1:
        StoreProvider.of<AppState>(context).dispatch(GetReservationsFuture(
            StoreProvider.of<AppState>(context).state.user!.userId, 10, _onResultGetReservationsFuture));
        break;
      case 2:
        StoreProvider.of<AppState>(context).dispatch(GetReservationsPrevious(
            StoreProvider.of<AppState>(context).state.user!.userId, 10, _onResultGetReservationsPrevious));
        break;
    }
  }

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

  void _onResultGetPlacesFavourite(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/placeResult');
    }
  }

  @override
  void dispose() {
    scaffoldKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          key: scaffoldKey,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined),
                label: 'Reservations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_alarm_rounded),
                label: 'Previous',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedIconTheme: const IconThemeData(size: 28),
            unselectedIconTheme: const IconThemeData(size: 24),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
          drawer: const DrawerUerto(),
          body: Stack(
            children: <Widget>[
              SafeArea(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 45,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.menu_rounded,
                              color: Theme.of(context).primaryColorDark,
                              size: 30,
                            ),
                            onPressed: () => scaffoldKey.currentState!.openDrawer(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.star_border_rounded,
                              color: Theme.of(context).primaryColorDark,
                              size: 30,
                            ),
                            onPressed: () => StoreProvider.of<AppState>(context)
                                .dispatch(GetPlacesFavourite(_onResultGetPlacesFavourite)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: 80,
                      width: width,
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Text>[
                              Text(
                                'Welcome back,',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                user!.fullname,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          AvatarCircle(
                            sizeRadius: 30,
                            avatarColorBg: Theme.of(context).highlightColor,
                            avatarColorTx: Theme.of(context).secondaryHeaderColor,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/placeSearch');
                      },
                      child: Material(
                        elevation: 0.2,
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          height: 45,
                          width: 350,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(50)),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                CupertinoIcons.search,
                                size: 20,
                                weight: 700,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Try to find...',
                                style: TextStyle(
                                  color: Color(0xffa09c98),
                                  fontSize: 16.5,
                                  fontFamily: 'Plus',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/placeFilter');
                      },
                      child: Container(
                          height: 130,
                          width: width * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: const Center(child: Text('restaurants'))),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/placeFilter');
                      },
                      child: Container(
                          height: 130,
                          width: width * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: const Center(child: Text('activities'))),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/recommend');
                      },
                      child: Container(
                        height: 130,
                        width: width * 0.9,
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: const Center(
                          child: Text(
                            'recommander system'),
                        ),
                      ),),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
              ),
              // Container(
              //   color: Colors.red,
              //   height: 2,
              //   width: width,
              //   margin: const EdgeInsets.only(top: 105.0),
              // ),
            ],
          ),
        );
      },
    );
  }
}
