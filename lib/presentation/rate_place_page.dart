// File created by
// Dunica David-Gabriel <FLTY>
// on 06/04/2023 13:33:28

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/rate_request_list_container.dart';

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

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      setState(() {
        rating.removeAt(selectedIndex);
      });
      if(StoreProvider.of<AppState>(context).state.listOfRateRequest!.isEmpty) {
        Navigator.pushReplacementNamed(context, '/main');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    rating = List<int>.filled(StoreProvider.of<AppState>(context, listen: false).state.listOfRateRequest!.length, 0, growable: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RateRequestListContainer(
      builder: (BuildContext context, List<RateRequest> ratings) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Rate your last reservation'),
            leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pushReplacementNamed('/main'),)
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 100),
                          Text(
                            'How was you experience at ${ratings[index].name}?',
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.star_border),
                                onPressed: () => setState(() => rating[index] = 1),
                                color: rating[index] >= 1 ? Colors.orange : Colors.grey,
                              ),
                              IconButton(
                                icon: const Icon(Icons.star_border),
                                onPressed: () => setState(() => rating[index] = 2),
                                color: rating[index] >= 2 ? Colors.orange : Colors.grey,
                              ),
                              IconButton(
                                icon: const Icon(Icons.star_border),
                                onPressed: () => setState(() => rating[index] = 3),
                                color: rating[index] >= 3 ? Colors.orange : Colors.grey,
                              ),
                              IconButton(
                                icon: const Icon(Icons.star_border),
                                onPressed: () => setState(() => rating[index] = 4),
                                color: rating[index] >= 4 ? Colors.orange : Colors.grey,
                              ),
                              IconButton(
                                icon: const Icon(Icons.star_border),
                                onPressed: () => setState(() => rating[index] = 5),
                                color: rating[index] >= 5 ? Colors.orange : Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: TextButton(
                              child: const Text('Rate!'),
                              onPressed: () {
                                selectedIndex = index;
                                StoreProvider.of<AppState>(context).dispatch(SetReservationRating(ratings[index].idplace, ratings[index].idreservation, rating[index], _onResult));
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: TextButton(
                              child: const Text('Dont want to rate this place!'),
                              onPressed: () {
                                selectedIndex = index;
                                StoreProvider.of<AppState>(context).dispatch(DeleteReservationRating(ratings[index].idreservation, _onResult));
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildDots(ratings.length),
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
              color: _currentPage == i ? Colors.blue : Colors.grey,
            ),
          ),
        ),
      );
    }
    return dots;
  }
}
