import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/containers/reservations_previous_container.dart';
import 'package:uerto/models/index.dart';

import '../actions/index.dart';

class ReservationsPreviousPage extends StatefulWidget {
  const ReservationsPreviousPage({Key? key}) : super(key: key);

  @override
  _ReservationsPreviousPageState createState() => _ReservationsPreviousPageState();
}

class _ReservationsPreviousPageState extends State<ReservationsPreviousPage> {

  final ScrollController _controller = ScrollController();
  bool _isLoading = false;
  int page = 2;

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

    if (delta < threshold  && _isLoading == false) {
      _isLoading = true;
      store.dispatch(GetReservationsPrevious(store.state.user!.userId, page, limit, _onResult));
    }
  }

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      page++;
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
        title: const Text('Previous Reservations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(const DeleteReservationsPrevious());
            Navigator.of(context).pushReplacementNamed('/main');
          },
        ),
      ),
      body: ReservationsPreviousContainer(
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
                return GestureDetector(
                  onTap: () {},
                  child: GridTileBar(
                      backgroundColor: index.isEven ? Colors.black38 : Colors.black12,
                      title: Text('${reservation.date} ${reservation.hour}',style: const TextStyle(color: Colors.black),),
                      subtitle: Text('for ${reservation.partySize.toString()} people',style: const TextStyle(color: Colors.black),),
                  ),
                );
            },
          );
        },
      ),
    );
  }
}
