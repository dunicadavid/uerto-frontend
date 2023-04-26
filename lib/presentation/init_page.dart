// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:13:11

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uerto/presentation/current_location_page.dart';
import 'package:uerto/presentation/rate_place_page.dart';
import 'package:uerto/presentation/register2_page.dart';
import 'package:uerto/presentation/verify_email_page.dart';

import '../containers/user_container.dart';
import '../models/index.dart';
import 'error_page.dart';
import 'loading_page.dart';
import 'login_page.dart';
import 'main_page.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (StoreProvider.of<AppState>(context).state.isInitDone == true) {
      if (StoreProvider.of<AppState>(context).state.isServerWorking == true) {
        if (FirebaseAuth.instance.currentUser == null) {
          return const LoginPage();
        } else {
          if (FirebaseAuth.instance.currentUser!.emailVerified == false) {
            return const VerifyEmailPage();
          } else if (StoreProvider.of<AppState>(context).state.user == null) {
            return const Register2Page();
          } else if (StoreProvider.of<AppState>(context).state.locationEnabled == false) {
            return const CurrentLocationPage();
          } else {
            if (StoreProvider.of<AppState>(context).state.listOfRateRequest!.isNotEmpty) {
              return const RatePlacePage();
            } else {
              return const MainPage();
            }
          }
        }
      } else {
        return const ErrorPage();
      }
    } else {
      return const LoadingPage();
    }
  }
}
