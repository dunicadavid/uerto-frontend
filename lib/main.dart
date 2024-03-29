// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:41:27

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:uerto/presentation/current_location_page.dart';
import 'package:uerto/presentation/edit_profile_page.dart';
import 'package:uerto/presentation/login_page.dart';
import 'package:uerto/presentation/main_page.dart';
import 'package:uerto/presentation/place_category_detailed_filters_page.dart';
import 'package:uerto/presentation/place_category_page.dart';
import 'package:uerto/presentation/place_details_page.dart';
import 'package:uerto/presentation/place_location_filters_page.dart';
import 'package:uerto/presentation/places_result_list_page.dart';
import 'package:uerto/presentation/recommander_system_page.dart';
import 'package:uerto/presentation/recommander_system_result_page.dart';
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
                '/permissions': (BuildContext context) => const CurrentLocationPage(),
                '/resetPassword': (BuildContext context) => const ResetPasswordPage(),
                '/editProfile': (BuildContext context) => const EditProfilePage(),
                '/placeSearch': (BuildContext context) => const SearchPlacePage(),
                '/placeFilter': (BuildContext context) => const PlaceCategoryPage(),
                '/placeLocationFilter': (BuildContext context) => const PlaceLocationFiltersPage(),
                '/placeDetailedFilter': (BuildContext context) => const PlaceCategoryDetailedFilterPage(),
                '/placeResult': (BuildContext context) => const PlacesResultListPage(),
                '/placeDetails': (BuildContext context) => const PlaceDetailsPage(),
                '/reservationsPrevious': (BuildContext context) => const ReservationsPreviousPage(),
                '/reservationsFuture': (BuildContext context) => const ReservationsFuturePage(),
                '/recommend':(BuildContext context) => const RecommanderSystemPage(),
                '/recommendResult':(BuildContext context) => const RecommanderSystemResultPage(),
              },
              theme: ThemeData(
                fontFamily: 'Plus',
                highlightColor: const Color(0xffd3f36a),
                canvasColor: const Color(0xfff7f6f1),
                primaryColor: const Color(0xffFFFFFF),
                primaryColorDark: const Color(0xff424242),
                secondaryHeaderColor: const Color(0xff24272c),
                textTheme: const TextTheme(
                  titleLarge: TextStyle(
                    color: Color(0xff24272c),
                    fontSize: 50.0,
                    fontFamily: 'Plus',
                    fontWeight: FontWeight.bold,
                  ),
                  titleSmall: TextStyle(
                    color: Color(0xff24272c),
                    fontSize: 25.0,
                    fontFamily: 'Plus',
                    fontWeight: FontWeight.bold,
                  ),
                  bodyLarge: TextStyle(
                    color: Color(0xff24272c),
                    fontSize: 29.0,
                    fontFamily: 'Plus',
                    fontWeight: FontWeight.bold,
                  ),
                  bodyMedium: TextStyle(
                    color: Color(0xff24272c),
                    fontSize: 24.0,
                    fontFamily: 'Plus',
                    fontWeight: FontWeight.bold,
                  ),
                  bodySmall: TextStyle(
                    color: Color(0xffa09c98),
                    fontSize: 16.0,
                    fontFamily: 'Plus',
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
