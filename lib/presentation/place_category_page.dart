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
  String _filter = '';

  void _onResultGetCurrentLocation(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    }
  }

  void _onResultGetPlaces(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/placeResult');
    }
  }

  @override
  void initState() {
    if(StoreProvider.of<AppState>(context, listen: false).state.latitude == null && StoreProvider.of<AppState>(context, listen: false).state.longitude == null) {
      setState(() => _isLoading = true);
      StoreProvider.of<AppState>(context, listen: false).dispatch(GetCurrentLocation(_onResultGetCurrentLocation));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlaceCategoryPage'),
        leading: IconButton(
          icon: const Icon(Icons.backspace_outlined),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/main');
          },
        ),
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
                      setState(
                          () => StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Restaurant')));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: StoreProvider.of<AppState>(context).state.category != 'Restaurant'
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
                      setState(() => StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Bar')));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: StoreProvider.of<AppState>(context).state.category != 'Bar'
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
                      setState(() => StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Cafe')));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: StoreProvider.of<AppState>(context).state.category != 'Cafe'
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
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/placeDetailedFilter');
                },
                child: const Text('Filters...  //get from db'),
              ),
            ),
            SizedBox(
              height: height * 0.02,
              width: width,
            ),
            Container(
              height: height * 0.07,
              width: width,
              color: Colors.amber,
              child: GestureDetector(
                  onTap: () {
                    if (_isLoading == false) {
                      Navigator.of(context).pushReplacementNamed('/placeLocationFilter');
                    }
                  },
                  child: Text('Location + radius //install maps',style: TextStyle(color: _isLoading == false ? Colors.black : Colors.black45),),),
            ),
            SizedBox(
              height: height * 0.02,
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
                        setState(() {
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('price-asc'));
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: StoreProvider.of<AppState>(context).state.sortBy == 'price-asc'
                            ? const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              )
                            : BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                              ),
                        child: const Center(
                          child: Text(
                            'Price +',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('price-desc'));
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: StoreProvider.of<AppState>(context).state.sortBy == 'price-desc'
                            ? const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              )
                            : BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                              ),
                        child: const Center(
                            child: Text(
                          'Price -',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('rating-asc'));
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: StoreProvider.of<AppState>(context).state.sortBy == 'rating-asc'
                            ? const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              )
                            : BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                              ),
                        child: const Center(
                            child: Text(
                          'Rating +',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('rating-desc'));
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: StoreProvider.of<AppState>(context).state.sortBy == 'rating-desc'
                            ? const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              )
                            : BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                              ),
                        child: const Center(
                            child: Text(
                          'Rating -',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                )),
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
                    if (StoreProvider.of<AppState>(context).state.category != null) {
                      for (final String element in StoreProvider.of<AppState>(context).state.filters!) {
                        _filter += element;
                      }
                      StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                      StoreProvider.of<AppState>(context)
                          .dispatch(GetPlaces(_filter, StoreProvider.of<AppState>(context).state.category!, _onResultGetPlaces));
                    }
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
                              'Search!',
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
