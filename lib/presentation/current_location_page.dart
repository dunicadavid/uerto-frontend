// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 16:41:32

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/models/index.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape_checkbox.dart';

class CurrentLocationPage extends StatefulWidget {
  const CurrentLocationPage({Key? key}) : super(key: key);

  @override
  _CurrentLocationPageState createState() => _CurrentLocationPageState();
}

class _CurrentLocationPageState extends State<CurrentLocationPage> {
  bool _locationCheck = false;
  bool _termsCheck = false;
  bool _isLoading = false;
  bool _isDone = true;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) => checkLocationVerified());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkLocationVerified() async {
    setState(() {
      StoreProvider.of<AppState>(context).dispatch(const VerifyLocationService());
    });
    if (StoreProvider.of<AppState>(context).state.locationEnabled == true) {
      setState(() {
        _locationCheck = true;
      });
      timer?.cancel();
    }
  }

  Future<void> getLocationPermission() async {
    await Geolocator.requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
              ),
              child: SizedBox(
                height: height,
                width: width,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: height * 0.06,
                            child: Text(
                              'Welcome ',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.051,
                            width: height * 0.051,
                            child: FittedBox(
                              child:
                              Image.asset('assets/images/logo-short.png'),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Connect into your account to \ncontinue',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 50,
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: width,
                                height: 140,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Color(0xdd424242),
                                      fontSize: 16.0,
                                      fontFamily: 'Plus',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(text: 'In order to start using Uerto, please first agree to our '),
                                      TextSpan(
                                        text: 'Terms & Conditions.',
                                        style: TextStyle(
                                          color: Theme.of(context).secondaryHeaderColor,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width,
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _termsCheck = !_termsCheck;
                                    });
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      HexagonalShapeCheckBox(
                                        size: 30,
                                        color: Theme.of(context).secondaryHeaderColor,
                                        onChange: _termsCheck,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "I agree Uerto' s Terms & Conditions",
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width,
                                height: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Text(
                                  'We need to access your location in order to determine which places to surface.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xdd424242),
                                    fontSize: 16.0,
                                    fontFamily: 'Plus',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width,
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: GestureDetector(
                                  onTap: () {
                                    getLocationPermission();
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      HexagonalShapeCheckBox(
                                        size: 30,
                                        color: Theme.of(context).secondaryHeaderColor,
                                        onChange: _locationCheck,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Enable location',
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 90,
                              ),
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {
                                      if(_termsCheck && _locationCheck) {
                                        setState(() {
                                          _isLoading = true;
                                          _isDone = false;
                                        });
                                        Navigator.of(context).pushReplacementNamed('/');
                                      }
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 150),
                                      height: height * 0.06,
                                      width: _isLoading ? height * 0.06 : width * 0.5,
                                      onEnd: () => setState(() => _isDone = true),
                                      decoration: BoxDecoration(
                                        color: _termsCheck && _locationCheck ? Theme.of(context).secondaryHeaderColor : Theme.of(context).primaryColorDark,
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
                                                          'Finish',
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
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacementNamed('/login');
                                  StoreProvider.of<AppState>(context).dispatch(const Signout());
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontFamily: 'Plus',
                                    color: Color(0xFF575757),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 200.0, left: 170),
              child: FittedBox(
                child:
                Image.asset('assets/images/image-signs.png'),
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
      ),
    );
  }
}
