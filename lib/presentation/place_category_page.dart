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
  bool _isLoading = false;
  final String _filter = '';
  String _category = '';

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/placeResult');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceCategoryPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height * 0.07,
              width: width,
            ),
            Container(
              height: height * 0.07,
              width: width,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() => _category = 'Restaurant');
                      StoreProvider.of<AppState>(context).dispatch(SetPlacesCategory(_category));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: _category != 'Restaurant'
                            ? BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                              )
                            : const BoxDecoration(color: Colors.blue),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.02,
                            ),
                            child: FittedBox(
                              child: Text(
                                'Restaurant',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Plus',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() => _category = 'Bar');
                      StoreProvider.of<AppState>(context).dispatch(SetPlacesCategory(_category));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: _category != 'Bar'
                            ? BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                              )
                            : const BoxDecoration(color: Colors.blue),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.008,
                            ),
                            child: FittedBox(
                              child: Text(
                                'Bar',
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() => _category = 'Cafe');
                      StoreProvider.of<AppState>(context).dispatch(SetPlacesCategory(_category));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: _category != 'Cafe'
                            ? BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                              )
                            : const BoxDecoration(color: Colors.blue),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.008,
                            ),
                            child: FittedBox(
                              child: Text(
                                'Cafe',
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
              width: width,
            ),
            Container(
              height: height * 0.15,
              width: width,
              color: Colors.amber,
              child: const Text('Filters  //get from db'),
            ),
            SizedBox(
              height: height * 0.02,
              width: width,
            ),
            Container(
              height: height * 0.07,
              width: width,
              color: Colors.amber,
              child: const Text('Location + radius //install maps'),
            ),
            SizedBox(
              height: height * 0.02,
              width: width,
            ),
            Container(
              height: height * 0.07,
              width: width,
              color: Colors.amber,
              child: const Text('Sort by //install maps'),
            ),
            SizedBox(
              height: height * 0.12,
              width: width,
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
                    setState(() => _isLoading = true);
                    StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                    StoreProvider.of<AppState>(context).dispatch(GetPlaces(_filter, _category, _onResult));
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
          ],
        ),
      ),
    );
  }
}
