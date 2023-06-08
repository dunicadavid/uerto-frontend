// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 15:43:55

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/containers/reservations_previous_container.dart';
import 'package:uerto/models/index.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_blinking_dot.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

import '../actions/index.dart';

class ReservationsPreviousPage extends StatefulWidget {
  const ReservationsPreviousPage({Key? key}) : super(key: key);

  @override
  _ReservationsPreviousPageState createState() => _ReservationsPreviousPageState();
}

class _ReservationsPreviousPageState extends State<ReservationsPreviousPage> {
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

    if (delta < threshold && store.state.listOfPreviousReservationsNextPage != 0 && _isLoading == false) {
      _isLoading = true;
      store.dispatch(GetReservationsPrevious(store.state.user!.userId, limit, _onResult));
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
      body: ReservationsPreviousContainer(
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
                        childAspectRatio: 2,
                      ),
                      controller: _controller,
                      itemCount: reservations.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final Reservation reservation = reservations[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 15, left: 12, right: 12),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(13)),
                              child: Stack(
                                children: <Widget>[
                                  GridTile(
                                    footer: GridTileBar(
                                      backgroundColor: Colors.black38,
                                      title: Text(reservation.name),
                                      subtitle: Text('${reservation.date} ${reservation.hour}'),
                                    ),
                                    child: Image.network(
                                      'https://img.toolstud.io/166x240/3b5998/fff&text=+A/R:0.69+',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0, left: 280.0),
                                    child: Container(
                                      height: 35,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(9)),
                                        color: reservation.status == 'declined'
                                            ? Colors.redAccent.withOpacity(0.3)
                                            : reservation.status == 'accepted'
                                                ? Colors.green.withOpacity(0.3)
                                                : reservation.status == 'on going'
                                                    ? Colors.amberAccent.withOpacity(0.3)
                                                    : Theme.of(context).highlightColor.withOpacity(0.3),
                                        border: Border.all(
                                          color: reservation.status == 'declined'
                                              ? Colors.redAccent
                                              : reservation.status == 'accepted'
                                                  ? Colors.green
                                                  : reservation.status == 'on going'
                                                      ? Colors.amberAccent
                                                      : Theme.of(context).highlightColor,
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          if (reservation.status == 'declined')
                                            const Icon(
                                              Icons.circle,
                                              color: Colors.redAccent,
                                              size: 12,
                                            )
                                          else if (reservation.status == 'accepted')
                                            const Icon(
                                              Icons.circle,
                                              color: Colors.green,
                                              size: 12,
                                            )
                                          else if (reservation.status == 'on going')
                                            const BlinkingDot()
                                          else if (reservation.status == 'finish')
                                            Icon(
                                              Icons.circle,
                                              color: Theme.of(context).highlightColor,
                                              size: 12,
                                            ),
                                          Text(
                                            reservation.status,
                                            style: TextStyle(
                                              color: reservation.status == 'declined'
                                                  ? Colors.redAccent
                                                  : reservation.status == 'accepted'
                                                      ? Colors.green
                                                      : reservation.status == 'on going'
                                                          ? Colors.amberAccent
                                                          : Theme.of(context).highlightColor,
                                              fontSize: 12.0,
                                              fontFamily: 'Plus',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 145.0, left: 260),
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      width: 110,
                                      height: 20,
                                      child: Text(
                                        'For ${reservation.partySize} people.',
                                        style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 14.0,
                                          fontFamily: 'Plus',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
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
                            StoreProvider.of<AppState>(context).dispatch(const DeleteReservationsPrevious());
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
