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
      //Navigator.pushReplacementNamed(context, '/placeResult');
      if(StoreProvider.of<AppState>(context).state.user!.nextStrategy == 0) {
        StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(1));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your case'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed('/main'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: <Widget>[
            GestureDetector(
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(GetRecommendedPlaces(_onResultRecommend));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                height: 140,
                width: width,
                child: const Text('Work'),
              ),
            ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            height: 140,
            width: width,
            child: const Text('Chill'),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            height: 140,
            width: width,
            child: const Text('Friday Night'),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            height: 140,
            width: width,
            child: const Text('Date'),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            height: 140,
            width: width,
            child: const Text('Active Break'),
          ),
        ],
      ),
    );
  }
}
