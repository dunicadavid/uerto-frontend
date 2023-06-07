// File created by
// Dunica David-Gabriel <FLTY>
// on 06/04/2023 13:33:28

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/rate_request_list_container.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../models/index.dart';

class RatePlacePage extends StatefulWidget {
  const RatePlacePage({Key? key}) : super(key: key);

  @override
  _RatePlacePageState createState() => _RatePlacePageState();
}

class _RatePlacePageState extends State<RatePlacePage> {
  late PageController _pageController;
  late int selectedIndex;
  late List<int> rating;
  int _currentPage = 0;
  List<String> months = <String>[
    '', // Index 0 is left empty since months are usually represented from index 1 to 12
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      if (rating[selectedIndex] == 5) {
        StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(2));
      }
      setState(() {
        rating.removeAt(selectedIndex);
      });
      if(StoreProvider.of<AppState>(context).state.listOfRateRequest!.length <= 1) {
        Navigator.of(context).pushReplacementNamed('/main');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    rating = List<int>.filled(StoreProvider.of<AppState>(context, listen: false).state.listOfRateRequest!.length, 0,
        growable: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return RateRequestListContainer(
      builder: (BuildContext context, List<RateRequest> ratings) {
        return Scaffold(
          body: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Container(
                              height: 250,
                              width: 250,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Container(
                              height: 390,
                              width: width,
                              child: PageView.builder(
                                controller: _pageController,
                                itemCount: ratings.length,
                                onPageChanged: (int page) {
                                  setState(() {
                                    _currentPage = page;
                                  });
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return Center(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 300,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        color: Theme.of(context).secondaryHeaderColor,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          const SizedBox(height: 20),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                                            child: Text(
                                              'How was you experience on ${int.parse(ratings[index].date.substring(8))} ${months[int.parse(ratings[index].date.substring(5, 7))]} at\n ${ratings[index].name}?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontSize: 20.0,
                                                fontFamily: 'Plus',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 40),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.star_rounded,
                                                  size: 30,
                                                ),
                                                onPressed: () => setState(() => rating[index] = 1),
                                                color: rating[index] >= 1
                                                    ? Theme.of(context).highlightColor
                                                    : Colors.white30,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.star_rounded,
                                                  size: 30,
                                                ),
                                                onPressed: () => setState(() => rating[index] = 2),
                                                color: rating[index] >= 2
                                                    ? Theme.of(context).highlightColor
                                                    : Colors.white30,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.star_rounded,
                                                  size: 30,
                                                ),
                                                onPressed: () => setState(() => rating[index] = 3),
                                                color: rating[index] >= 3
                                                    ? Theme.of(context).highlightColor
                                                    : Colors.white30,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.star_rounded,
                                                  size: 30,
                                                ),
                                                onPressed: () => setState(() => rating[index] = 4),
                                                color: rating[index] >= 4
                                                    ? Theme.of(context).highlightColor
                                                    : Colors.white30,
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.star_rounded,
                                                  size: 30,
                                                ),
                                                onPressed: () => setState(() => rating[index] = 5),
                                                color: rating[index] >= 5
                                                    ? Theme.of(context).highlightColor
                                                    : Colors.white30,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 40),
                                          Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: const Size(70, 40),
                                                backgroundColor: Theme.of(context).highlightColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                elevation: 0,
                                              ),
                                              child: Text(
                                                'Rate !',
                                                style: TextStyle(
                                                  color: Theme.of(context).secondaryHeaderColor,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Plus',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              onPressed: () {
                                                if (rating[index] != 0) {
                                                  selectedIndex = index;
                                                  StoreProvider.of<AppState>(context).dispatch(SetReservationRating(
                                                      ratings[index].idplace,
                                                      ratings[index].idreservation,
                                                      rating[index],
                                                      _onResult));
                                                }
                                              },
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Center(
                                            child: TextButton(
                                              child: Text(
                                                'Dont want to rate this place!',
                                                style: TextStyle(
                                                  color: Theme.of(context).primaryColor,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Plus',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              onPressed: () {
                                                selectedIndex = index;
                                                StoreProvider.of<AppState>(context).dispatch(
                                                    DeleteReservationRating(ratings[index].idreservation, _onResult));
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _buildDots(ratings.length),
                          ),
                        ],
                      ),
                    ),
                    AppBarUerto(
                      colorFill: Theme.of(context).highlightColor,
                      width: width,
                      height: 150,
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
                                  Navigator.of(context).pushReplacementNamed('/main');
                                },
                              ),
                              Text(
                                'Your opinion matters!',
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontSize: 22,
                                  fontFamily: 'Plus',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.transparent,
                                  size: 30,
                                ),
                                onPressed: () {
                                  ///muta l de aici
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  List<Widget> _buildDots(int size) {
    final List<Widget> dots = <Widget>[];
    for (int i = 0; i < size; i++) {
      dots.add(
        Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == i
                  ? Theme.of(context).secondaryHeaderColor
                  : Theme.of(context).secondaryHeaderColor.withOpacity(0.3),
            ),
          ),
        ),
      );
    }
    return dots;
  }
}
