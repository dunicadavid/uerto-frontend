// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:08:25

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../../actions/index.dart';
import '../../models/index.dart';

class PlaceCategoryPage extends StatefulWidget {
  const PlaceCategoryPage({Key? key}) : super(key: key);

  @override
  _PlaceCategoryPageState createState() => _PlaceCategoryPageState();
}

class _PlaceCategoryPageState extends State<PlaceCategoryPage> {
  bool _isLoading = false;
  bool _isDone = true;
  String _filter = '';

  void _onResultGetCurrentLocation(AppAction action) {
    setState(() {
      _isLoading = false;
      _isDone = false;
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
    if (StoreProvider.of<AppState>(context, listen: false).state.latitude == null &&
        StoreProvider.of<AppState>(context, listen: false).state.longitude == null) {
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
      body: Stack(
        children: <Widget>[

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
              child: Text(
                'Location + radius //install maps',
                style: TextStyle(color: _isLoading == false ? Colors.black : Colors.black45),
              ),
            ),
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
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: AppBarUerto(
              colorFill: Theme.of(context).highlightColor,
              width: width,
              height: StoreProvider.of<AppState>(context).state.category == null ? 220 : 390,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 280),
            child: HexagonalShape(
                size: 120,
                colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                colorStroke: Colors.transparent,
                angle: 0.20943951,
                strokeWidth: 0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 280),
            child: HexagonalShape(
                size: 50,
                colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                colorStroke: Colors.transparent,
                angle: -0.523598776,
                strokeWidth: 0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() => StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Eat')));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: StoreProvider.of<AppState>(context).state.category == 'Eat' ? Theme.of(context).secondaryHeaderColor : Theme.of(context).secondaryHeaderColor.withOpacity(0.7),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood_rounded,
                            color: Color(0xffE1DEDB),
                          ),
                          Text(
                            'Eat',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xffE1DEDB)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() => StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Drink')));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: StoreProvider.of<AppState>(context).state.category == 'Drink' ? Theme.of(context).secondaryHeaderColor : Theme.of(context).secondaryHeaderColor.withOpacity(0.7),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.wine_bar_rounded,
                            color: Color(0xffE1DEDB),
                          ),
                          Text(
                            'Drink',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xffE1DEDB)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: SizedBox(
                height: 45,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Theme.of(context).primaryColorDark,
                        size: 30,
                      ),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const DeleteReservationsPrevious());
                        Navigator.of(context).pushReplacementNamed('/main');
                      },
                    ),
                    Text(
                      'Restaurants',
                      style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 22,
                        fontFamily: 'Plus',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 680),
              child: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      if (StoreProvider.of<AppState>(context).state.category != null) {
                        for (final String element in StoreProvider.of<AppState>(context).state.filters!) {
                          _filter += element;
                        }
                        setState(() {
                          _isLoading = true;
                          _isDone = false;
                        });
                        StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                        StoreProvider.of<AppState>(context).dispatch(
                            GetPlaces(_filter, StoreProvider.of<AppState>(context).state.category!, _onResultGetPlaces));
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      height: height * 0.06,
                      width: _isLoading ? height * 0.06 : width * 0.5,
                      onEnd: () => setState(() => _isDone = true),
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: _isDone == false
                          ? Container()
                          : _isLoading
                              ? Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                )
                              : Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: height * 0.008,
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(),
                                        ),
                                        const Text(
                                          'search',
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 25.0,
                                            fontFamily: 'Plus',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 7.0),
                                          child: Container(
                                            height: height * 0.047,
                                            width: height * 0.047,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context).primaryColor,
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                            ),
                                            child: const Icon(Icons.arrow_forward_rounded),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 2,
            width: width,
            margin: const EdgeInsets.only(top: 775.0),
          ),
          Container(
            color: Colors.red,
            height: 2,
            width: width,
            margin: const EdgeInsets.only(top: 810.0),
          ),
        ],
      ),
    );
  }
}
