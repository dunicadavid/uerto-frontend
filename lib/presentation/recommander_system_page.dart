// File created by
// Dunica David-Gabriel <FLTY>
// on 30/03/2023 16:24:52

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/models/index.dart';

class RecommanderSystemPage extends StatefulWidget {
  const RecommanderSystemPage({Key? key}) : super(key: key);

  @override
  _RecommanderSystemPageState createState() => _RecommanderSystemPageState();
}

class _RecommanderSystemPageState extends State<RecommanderSystemPage> {
  void _onResultRecommend(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/recommendResult');
      if (StoreProvider.of<AppState>(context).state.user!.nextStrategy == 0) {
        StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(3));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
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
                        onPressed: () => Navigator.of(context).pushReplacementNamed('/main'),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border_rounded,
                          color: Theme.of(context).primaryColorDark,
                          size: 30,
                        ),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(GetRecommendedPlaces(_onResultRecommend));
                          ///muta l de aici
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
