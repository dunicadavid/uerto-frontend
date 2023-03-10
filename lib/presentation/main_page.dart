// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:43

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/presentation/widgets/drawer.dart';

import '../../containers/user_container.dart';
import '../../models/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

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
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          key: scaffoldKey,
          floatingActionButton: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              mini: true,
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
              child: const Icon(
                Icons.menu,
                color: Color(0xFF475BF0),
                size: 27,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
          drawer: const DrawerUerto(),
          body: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text('MAIN PAGE'),
                  Text('Hello, ${user!.fullname}'),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/placeFilter');
                    },
                    child: const Text('places'),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/placeSearch');
                    },
                    child: const Text('search'),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(GetPlacesFavourite(_onResultGetPlacesFavourite));
                    },
                    child: const Text('Favourites   //bug back-button',style: TextStyle(color: Colors.red),),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(GetReservationsFuture(user.userId, 10,_onResultGetReservationsFuture));
                    },
                    child: const Text('Reservations'),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(GetReservationsPrevious(user.userId, 10,_onResultGetReservationsPrevious));
                    },
                    child: const Text('Previous'),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(const Signout());
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    child: const Text('Signout'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
