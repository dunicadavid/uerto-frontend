// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:08:25

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart' as static_maps;
import 'package:google_static_maps_controller/google_static_maps_controller.dart';
import 'package:uerto/presentation/widgets/test_appbar_animated.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../../actions/index.dart';
import '../../models/index.dart';
import '../containers/current_location_container.dart';
import '../containers/place_filters_container.dart';
import '../services/filters_list.dart';
import '../services/google_maps_style.dart';

class PlaceCategoryPage extends StatefulWidget {
  const PlaceCategoryPage({Key? key}) : super(key: key);

  @override
  _PlaceCategoryPageState createState() => _PlaceCategoryPageState();
}

class _PlaceCategoryPageState extends State<PlaceCategoryPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationAppBar;
  late Animation<double> _animationMoreButton;

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

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _animationAppBar = Tween<double>(
            begin: StoreProvider.of<AppState>(context, listen: false).state.visibleFilters == true ? 420 : 230,
            end: 420)
        .animate(_controller);
    _animationMoreButton = StoreProvider.of<AppState>(context, listen: false).state.visibleFilters == true
        ? Tween<double>(begin: 1.0, end: 1.0).animate(_controller)
        : TweenSequence([
            TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 1),
            TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 1),
            TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 1),
            TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 1),
          ]).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ///BACKGROUND
          AppBarAnimatedUerto(
            colorFill: Theme.of(context).highlightColor,
            width: width,
            animation: _animationAppBar,
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

          ///HEADER
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
                        StoreProvider.of<AppState>(context).dispatch(const RemovePlacesCategory());
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

          ///CATEGORIES
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (StoreProvider.of<AppState>(context).state.category != 'Restaurant') {
                          if (StoreProvider.of<AppState>(context).state.visibleFilters != true) {
                            _controller.forward();
                          }
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Restaurant'));
                        }
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: StoreProvider.of<AppState>(context).state.category == 'Restaurant'
                            ? Theme.of(context).secondaryHeaderColor
                            : Theme.of(context).secondaryHeaderColor.withOpacity(0.7),
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
                      setState(() {
                        if (StoreProvider.of<AppState>(context).state.category != 'Bar') {
                          if (StoreProvider.of<AppState>(context).state.visibleFilters != true) {
                            _controller.forward();
                          }
                          StoreProvider.of<AppState>(context).dispatch(const SetPlacesCategory('Bar'));
                        }
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: StoreProvider.of<AppState>(context).state.category == 'Bar'
                            ? Theme.of(context).secondaryHeaderColor
                            : Theme.of(context).secondaryHeaderColor.withOpacity(0.7),
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

          ///button more-ICON
          AnimatedBuilder(
            animation: _animationMoreButton,
            builder: (BuildContext context, Widget? child) {
              return Padding(
                padding: const EdgeInsets.only(left: 315, top: 370),
                child: Opacity(
                  opacity: _animationMoreButton.value,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        StoreProvider.of<AppState>(context).dispatch(const ChangePlacesOthersVisibility());
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: FittedBox(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: (Widget child, Animation<double> animation) {
                            return ScaleTransition(scale: animation, child: child);
                          },
                          child: StoreProvider.of<AppState>(context, listen: false).state.visibleOthers == false
                              ? Icon(
                                  Icons.add,
                                  color: Theme.of(context).secondaryHeaderColor,
                                )
                              : Icon(
                                  Icons.remove,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          ///FILTERS
          AnimatedOpacity(
            opacity: StoreProvider.of<AppState>(context).state.visibleFilters == true ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            child: Padding(
              padding: EdgeInsets.only(top: 180, left: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Filters',
                    style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 22,
                      fontFamily: 'Plus',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: height * 0.15,
                    width: width * 0.9,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          width: width * 0.9 - 20,
                          height: 94,
                          child: PlaceFiltersContainer(
                            builder: (BuildContext context, List<String>? selectedFilters) {
                              return Wrap(
                                //alignment: WrapAlignment.spaceBetween,
                                spacing: 20,
                                runSpacing: 10,
                                children: List<Widget>.generate(
                                  5,
                                  (int index) => GestureDetector(
                                    onTap: () {
                                      setState(
                                            () {
                                          if (selectedFilters!.contains(Filters.filtersList[index])) {
                                            StoreProvider.of<AppState>(context).dispatch(RemovePlacesFilters(Filters.filtersList[index]));
                                          } else {
                                            StoreProvider.of<AppState>(context).dispatch(SetPlacesFilters(Filters.filtersList[index]));
                                          }
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedFilters!.contains(Filters.filtersList[index]) ? Theme.of(context).secondaryHeaderColor : Theme.of(context).secondaryHeaderColor.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.fastfood_rounded,
                                            size: 22,
                                            color: Color(0xffE1DEDB),
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            Filters.filtersList[index],
                                            style: const TextStyle(
                                              color: Color(0xffE1DEDB),
                                              fontSize: 16,
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
                        GestureDetector(
                          onTap: () {
                            if (StoreProvider.of<AppState>(context).state.visibleFilters == true) {
                              Navigator.of(context).pushReplacementNamed('/placeDetailedFilter');
                            }
                          },
                          child: const Text(
                            'more..',
                            style: TextStyle(
                              color: Color(0xff24272c),
                              fontSize: 16.0,
                              fontFamily: 'Plus',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///LOCATION
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: StoreProvider.of<AppState>(context, listen: false).state.visibleOthers == true ? 1.0 : 0.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 410),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Location',
                      style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 22,
                        fontFamily: 'Plus',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_isLoading == false) {
                          Navigator.of(context).pushReplacementNamed('/placeLocationFilter');
                        }
                      },
                      child: Container(
                        height: 140,
                        width: 350,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: CurrentLocationContainer(
                          builder: (BuildContext context, LatLng location) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://maps.googleapis.com/maps/api/staticmap?center=${location.latitude},${location.longitude}&zoom=14&size=350x140&maptype=roadmap&${Utils.urlStyle}&markers=color:0xd3f36a%7Clabel:X%7C${location.latitude},${location.longitude}&key=AIzaSyCzEElzedwILPIL_YDtHlKOWWDdOpUAm2A',
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///SORTBY
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: StoreProvider.of<AppState>(context, listen: false).state.visibleOthers == true ? 1.0 : 0.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 620),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sort by',
                      style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 22,
                        fontFamily: 'Plus',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: height * 0.07,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('price-asc'));
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              width: 70,
                              height: 40,
                              decoration: StoreProvider.of<AppState>(context).state.sortBy == 'price-asc'
                                  ? BoxDecoration(
                                      color: Theme.of(context).highlightColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    )
                                  : BoxDecoration(
                                      color: Theme.of(context).secondaryHeaderColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    ),
                              child: Center(
                                child: Text(
                                  'Price +',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: StoreProvider.of<AppState>(context).state.sortBy == 'price-asc'
                                          ? Theme.of(context).secondaryHeaderColor
                                          : const Color(0xffE1DEDB)),
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
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              width: 70,
                              height: 40,
                              decoration: StoreProvider.of<AppState>(context).state.sortBy == 'price-desc'
                                  ? BoxDecoration(
                                      color: Theme.of(context).highlightColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    )
                                  : BoxDecoration(
                                      color: Theme.of(context).secondaryHeaderColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    ),
                              child: Center(
                                  child: Text(
                                'Price -',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: StoreProvider.of<AppState>(context).state.sortBy == 'price-desc'
                                        ? Theme.of(context).secondaryHeaderColor
                                        : const Color(0xffE1DEDB)),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('rating-asc'));
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              width: 70,
                              height: 40,
                              decoration: StoreProvider.of<AppState>(context).state.sortBy == 'rating-asc'
                                  ? BoxDecoration(
                                      color: Theme.of(context).highlightColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    )
                                  : BoxDecoration(
                                      color: Theme.of(context).secondaryHeaderColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    ),
                              child: Center(
                                  child: Text(
                                'Rating +',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: StoreProvider.of<AppState>(context).state.sortBy == 'rating-asc'
                                        ? Theme.of(context).secondaryHeaderColor
                                        : const Color(0xffE1DEDB)),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                StoreProvider.of<AppState>(context).dispatch(const SetPlacesSortedBy('rating-desc'));
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              width: 70,
                              height: 40,
                              decoration: StoreProvider.of<AppState>(context).state.sortBy == 'rating-desc'
                                  ? BoxDecoration(
                                      color: Theme.of(context).highlightColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    )
                                  : BoxDecoration(
                                      color: Theme.of(context).secondaryHeaderColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                    ),
                              child: Center(
                                  child: Text(
                                'Rating -',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: StoreProvider.of<AppState>(context).state.sortBy == 'rating-desc'
                                        ? Theme.of(context).secondaryHeaderColor
                                        : const Color(0xffE1DEDB)),
                              )),
                            ),
                          ),
                        ],
                      ),
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
                        StoreProvider.of<AppState>(context).dispatch(GetPlaces(
                            _filter, StoreProvider.of<AppState>(context).state.category!, _onResultGetPlaces));
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
          // Container(
          //   color: Colors.red,
          //   height: 2,
          //   width: width,
          //   margin: const EdgeInsets.only(top: 775.0),
          // ),
          // Container(
          //   color: Colors.red,
          //   height: 2,
          //   width: width,
          //   margin: const EdgeInsets.only(top: 810.0),
          // ),
        ],
      ),
    );
  }
}
