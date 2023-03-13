// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 15:43:47

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
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
      store.dispatch(GetReservationsFuture(store.state.user!.userId, limit, _onResult));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Reservations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(const DeleteReservationsFuture());
            Navigator.of(context).pushReplacementNamed('/main');
          },
        ),
      ),
      body: ReservationsFutureContainer(
        builder: (BuildContext context, List<Reservation> reservations) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 4,
            ),
            controller: _controller,
            itemCount: reservations.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final Reservation reservation = reservations[index];
              return GridTileBar(
                backgroundColor: index.isEven ? Colors.black38 : Colors.black12,
                title: Text('${reservation.date} ${reservation.hour}',style: const TextStyle(color: Colors.black),),
                subtitle: Text('for ${reservation.partySize.toString()} people',style: const TextStyle(color: Colors.black),),
                trailing: IconButton(icon: const Icon(Icons.delete_outline_rounded),onPressed: (){
                  StoreProvider.of<AppState>(context).dispatch(DeleteReservation(reservation.idreservation, _onResultDeleteReservation));
                },),
              );
            },
          );
        },
      ),
    );
  }
}