// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:08:25

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class PlaceCategoryPage extends StatefulWidget {
  const PlaceCategoryPage({Key? key}) : super(key: key);

  @override
  _PlaceCategoryPageState createState() => _PlaceCategoryPageState();
}

class _PlaceCategoryPageState extends State<PlaceCategoryPage> {
  final String _filter = '';

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/placeResult');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceCategoryPage'),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                StoreProvider.of<AppState>(context).dispatch(GetPlaces(_filter, _onResult));
              },
              child: Text('Get Places'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/main');
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
