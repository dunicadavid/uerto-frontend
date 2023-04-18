// File created by
// Dunica David-Gabriel <FLTY>
// on 30/03/2023 16:24:52

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/models/index.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';

class RecommanderSystemPage extends StatefulWidget {
  const RecommanderSystemPage({Key? key}) : super(key: key);

  @override
  _RecommanderSystemPageState createState() => _RecommanderSystemPageState();
}

class _RecommanderSystemPageState extends State<RecommanderSystemPage> {
  void _onResultRecommend(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushReplacementNamed(context, '/recommendResult');
      if (StoreProvider.of<AppState>(context).state.user!.nextStrategy == 0) {
        StoreProvider.of<AppState>(context).dispatch(const SetRecommenderStrategy(3));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
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
                          onPressed: () => Navigator.of(context).pushReplacementNamed('/main'),
                        ),
                        Text(
                          'Recommendations',
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
                            StoreProvider.of<AppState>(context).dispatch(GetRecommendedPlaces(_onResultRecommend));

                            ///muta l de aici
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                HexagonalShape(
                    size: 160,
                    colorFill: Theme.of(context).highlightColor,
                    colorStroke: Colors.transparent,
                    strokeWidth: 0,
                    angle: -0.05236),
                const SizedBox(
                  height: 230,
                ),
                Container(
                  height: 140,
                  width: 350,
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Some interesting add!',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      const Text(
                        'Here will be the information about the specific topic of the add or some uerto news.',
                        style: TextStyle(
                          color: Color(0xffa09c98),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 645,
              left: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.star_rounded,
                  color: Theme.of(context).secondaryHeaderColor,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225, left: 75),
              child: HexagonalShape(
                  size: 260,
                  colorFill: Colors.transparent,
                  colorStroke: Theme.of(context).primaryColorDark.withOpacity(0.1),
                  strokeWidth: 2.5,
                  angle: -0.05236),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 30),
              child: HexagonalShape(
                  size: 350,
                  colorFill: Colors.transparent,
                  colorStroke: Theme.of(context).primaryColorDark.withOpacity(0.05),
                  strokeWidth: 2,
                  angle: -0.05236),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 0),
              child: HexagonalShape(
                  size: 460,
                  colorFill: Colors.transparent,
                  colorStroke: Theme.of(context).primaryColorDark.withOpacity(0.03),
                  strokeWidth: 2,
                  angle: -0.05236),
            ),
            Positioned(
              top: 220,
              left: 30,
              child: Container(
                height: 60,
                width: 100,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  color: Theme.of(context).highlightColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Friday Night',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).secondaryHeaderColor),
                    ),
                    Icon(
                      CupertinoIcons.wand_stars_inverse,
                      size: 25,
                      color: Theme.of(context).secondaryHeaderColor.withOpacity(0.8),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 170,
              child: Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.music_note,
                      color: Color(0xffE1DEDB),
                    ),
                    Text(
                      'Chill',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xffE1DEDB)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 260,
              left: 300,
              child: Container(
                height: 60,
                width: 100,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  color: Theme.of(context).highlightColor,
                ),
                child: Column(

                  children: <Widget>[
                    Text(
                      'Childhood',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).secondaryHeaderColor),
                    ),
                    Icon(CupertinoIcons.paperplane,size: 25,color: Theme.of(context).secondaryHeaderColor.withOpacity(0.8),),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 430,
              left: 20,
              child: Container(
                height: 60,
                width: 100,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  color: Theme.of(context).highlightColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Energizing',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).secondaryHeaderColor),
                    ),
                    Icon(Icons.sports_volleyball_outlined,size: 25,color: Theme.of(context).secondaryHeaderColor.withOpacity(0.8),)
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 325,
              child: Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.wine_bar_rounded,
                      color: Color(0xffE1DEDB),
                    ),
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xffE1DEDB)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 220,
              child: Container(
                height: 50,
                width: 90,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.book,
                      color: Color(0xffE1DEDB),
                    ),
                    Text(
                      'Work',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE1DEDB),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
