// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 15:43:47

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';
import '../actions/index.dart';
import '../containers/reservations_future_container.dart';
import '../models/index.dart';

class ReservationsFuturePage extends StatefulWidget {
  const ReservationsFuturePage({Key? key}) : super(key: key);

  @override
  _ReservationsFuturePageState createState() => _ReservationsFuturePageState();
}

class _ReservationsFuturePageState extends State<ReservationsFuturePage> {

  final ScrollController _controller = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final double max = _controller.position.maxScrollExtent;
    final double offset = _controller.offset;
    final double delta = max - offset;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double threshold = screenHeight * 0.5;
    const int limit = 10;

    if (delta < threshold  && store.state.listOfFutureReservationsNextPage != 0 && _isLoading == false) {
      _isLoading = true;
      store.dispatch(GetReservationsFuture(store.state.user!.userId, limit, _onResult));
    }
  }

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    }
  }

  void _onResultDeleteReservation(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      final Store<AppState> store = StoreProvider.of<AppState>(context);
      const int limit = 10;
      _isLoading = true;
      store.dispatch(GetReservationsFuture(store.state.user!.userId, limit, _onResult));  ///delete reservation
    }
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
      body: ReservationsFutureContainer(
        builder: (BuildContext context, List<Reservation> reservations) {
          return Stack(
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 2.5,
                      ),
                      controller: _controller,
                      itemCount: reservations.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final Reservation reservation = reservations[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              height: 150,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(13)),
                                color: Theme.of(context).primaryColorDark,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '${reservation.date} ${reservation.hour}',
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'for ${reservation.partySize.toString()} people',
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              AppBarUerto(
                colorFill: Theme.of(context).highlightColor,
                width: width,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top:20,left: 280),
                child: HexagonalShape(
                    size: 120,
                    colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                    colorStroke: Colors.transparent,
                    angle: 0.20943951,
                    strokeWidth: 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top:90,left: 280),
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
                            StoreProvider.of<AppState>(context).dispatch(const DeleteReservationsFuture());
                            Navigator.of(context).pushReplacementNamed('/main');
                          },
                        ),
                        Text(
                          'Previous Reservations',
                          style: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontSize: 22,
                            fontFamily: 'Plus',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Theme.of(context).primaryColorDark,
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
          );
        },
      ),
    );
  }
}
