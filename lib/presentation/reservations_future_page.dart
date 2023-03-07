// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 15:43:47

import 'package:flutter/material.dart';

import '../containers/reservations_previous_container.dart';
import '../models/index.dart';

class ReservationsFuturePage extends StatefulWidget {
  const ReservationsFuturePage({Key? key}) : super(key: key);

  @override
  _ReservationsFuturePageState createState() => _ReservationsFuturePageState();
}

class _ReservationsFuturePageState extends State<ReservationsFuturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previous Reservations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/main');
          },
        ),
      ),
      body: ReservationsPreviousContainer(
        builder: (BuildContext context, List<Reservation> reservations) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
            itemCount: reservations.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final Reservation reservation = reservations[index];
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text('${reservation.date} ${reservation.hour}'),
                    subtitle: Text('for ${reservation.partySize.toString()} people'),
                  ),
                  child: Image.network(
                    'https://img.toolstud.io/166x240/3b5998/fff&text=+A/R:0.69+',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
