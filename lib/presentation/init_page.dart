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
                                ///regamdeste putin treaba cu node nu merge ----> isSERVERworking (bug login (ori pica ca nu e user ori ca nu merge serverul))
  @override
  Widget build(BuildContext context) {
        if (StoreProvider.of<AppState>(context).state.isInitDone == true) {
          print('FirebaseAuth.instance.currentUser: ${FirebaseAuth.instance.currentUser}');
          print('StoreProvider.of<AppState>(context).state.isServerWorking!:${StoreProvider.of<AppState>(context).state.isServerWorking}');
          if(StoreProvider.of<AppState>(context).state.user != null) {
            print('StoreProvider.of<AppState>(context).state.user!:${StoreProvider.of<AppState>(context).state.user}');
          } else {
            print('StoreProvider.of<AppState>(context).state.user!:${false}');
          }

          if (FirebaseAuth.instance.currentUser == null && StoreProvider.of<AppState>(context).state.isServerWorking!) {
            print('----->LoginPage()');
            return const LoginPage();
          } else if (!FirebaseAuth.instance.currentUser!.emailVerified &&
              StoreProvider.of<AppState>(context).state.isServerWorking!) {
            print('----->VerifyEmailPage()');
            return const VerifyEmailPage();
          } else if (StoreProvider.of<AppState>(context).state.user == null && StoreProvider.of<AppState>(context).state.isServerWorking!) {
            print('----->Register2Page()');
            return const Register2Page();
          } else if (StoreProvider.of<AppState>(context).state.locationEnabled == false &&
              StoreProvider.of<AppState>(context).state.isServerWorking!) {
            print('----->CurrentLocationPage()');
            return const CurrentLocationPage();
          } else if (!StoreProvider.of<AppState>(context).state.isServerWorking!) {
            print('----->ErrorPage()');
            return const ErrorPage();
          } else if (StoreProvider.of<AppState>(context).state.listOfRateRequest!.isNotEmpty) {
            print('----->RatePlacePage()');
            return const RatePlacePage();
          } else {
            print('----->MainPage()');
            return const MainPage();
          }
        } else {
          return const LoadingPage();
        }
  }
}
