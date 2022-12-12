// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:43

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../../containers/user_container.dart';
import '../../models/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                const Text('MAIN PAGE'),
                Text('Hello, ${user?.fullname}'),
                SizedBox(
                  height: _height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/placeFilter');
                  },
                  child: const Text('places'),
                ),
                SizedBox(
                  height: _height * 0.05,
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
        );
      },
    );
  }
}
