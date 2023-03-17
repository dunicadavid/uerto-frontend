// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:41:27

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:uerto/presentation/edit_profile_page.dart';
import 'package:uerto/presentation/login_page.dart';
import 'package:uerto/presentation/main_page.dart';
import 'package:uerto/presentation/place_category_detailed_filters_page.dart';
import 'package:uerto/presentation/place_category_page.dart';
import 'package:uerto/presentation/place_details_page.dart';
import 'package:uerto/presentation/places_result_list_page.dart';
import 'package:uerto/presentation/register_page.dart';
import 'package:uerto/presentation/reservations_future_page.dart';
import 'package:uerto/presentation/reservations_previous_page.dart';
import 'package:uerto/presentation/reset_password_page.dart';
import 'package:uerto/presentation/search_place_page.dart';
import 'package:uerto/services/notification_service.dart';

import './mixin/init_mixin.dart';
import '../models/index.dart';
import 'presentation/init_page.dart';

void main() {
  /// ---------RunApp-----------------
  HttpOverrides.global = MyHttpOverrides(); /// [testing-feature] SSL cert not verified
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  runApp(const UertoApp());
}

class UertoApp extends StatefulWidget {
  const UertoApp({Key? key}) : super(key: key);

  @override
  _UertoApp createState() => _UertoApp();
}

/// [testing-feature] SSL cert not verified
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class _UertoApp extends State<UertoApp> with InitMixin<UertoApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Uerto',
              routes: <String, WidgetBuilder>{
                '/': (BuildContext context) => const InitPage(),
                '/main': (BuildContext context) => const MainPage(),
                '/login': (BuildContext context) => const LoginPage(),
                '/register': (BuildContext context) => const RegisterPage(),
                '/resetPassword': (BuildContext context) => const ResetPasswordPage(),
                '/editProfile': (BuildContext context) => const EditProfilePage(),
                '/placeSearch': (BuildContext context) => const SearchPlacePage(),
                '/placeFilter': (BuildContext context) => const PlaceCategoryPage(),
                '/placeDetailedFilter': (BuildContext context) => const PlaceCategoryDetailedFilterPage(),
                '/placeResult': (BuildContext context) => const PlacesResultListPage(),
                '/placeDetails': (BuildContext context) => const PlaceDetailsPage(),
                '/reservationsPrevious': (BuildContext context) => const ReservationsPreviousPage(),
                '/reservationsFuture': (BuildContext context) => const ReservationsFuturePage(),
              },
              theme: ThemeData(
                fontFamily: 'Plus',
                primaryColor: const Color(0xff262f4c),
                secondaryHeaderColor: const Color(0xff12FCB2),
              ),
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error!;
          }

          return const MaterialApp(
            title: 'Uerto',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
