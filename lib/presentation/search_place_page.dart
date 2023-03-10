// File created by
// Dunica David-Gabriel <FLTY>
// on 10/03/2023 16:15:22

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../containers/user_container.dart';
import '../models/index.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({Key? key}) : super(key: key);

  @override
  _SearchPlacePageState createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
              backgroundColor: const Color(0xffF0F0F0),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color(0xff262f4c),
                leading: GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacementNamed('/main'),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Color(0xff12FCB2),
                    )),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0x24000000),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      //duntextAlignVertical: TextAlignVertical.top,
                      cursorColor: const Color(0xff12FCB2),
                      style: const TextStyle(color: Color(0xffF0F0F0), fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        hintText: 'search',
                        hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      onChanged: (String value) {
                        //StoreProvider.of<AppState>(context).dispatch(SearchUsers(value));
                      },
                    ),
                  ),
                ),
              ),
              body: /*ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users[index];

                  return ListTile(
                    onTap: () {
                      StoreProvider.of<AppState>(context).dispatch(SearchChoose(user));
                      Navigator.pushReplacementNamed(context, '/result');
                    },
                    leading: user.profilePhotoUrl != null
                        ? ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        child: AspectRatio(
                            aspectRatio: 1.0,
                            child: Image.network(
                              user.profilePhotoUrl!,
                              fit: BoxFit.fill,
                            )))
                        : null,
                    title: Text(
                      user.fullName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(user.email),
                  );
                },),*/Container()
        );
        },
    );
  }
}
