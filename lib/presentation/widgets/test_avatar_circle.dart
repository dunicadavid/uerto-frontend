// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 12:47:01

import 'package:flutter/material.dart';
import 'package:uerto/containers/user_container.dart';
import 'package:uerto/models/index.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    Key? key,
    required this.sizeWidth,
    required this.avatarColorTx,
    required this.avatarColorBg,
  })  : assert(sizeWidth != null),
        assert(avatarColorTx != null),
        assert(avatarColorBg != null),
        super(key: key);

  final double sizeWidth;
  final Color avatarColorTx;
  final Color avatarColorBg;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return CircleAvatar(
          backgroundColor: avatarColorBg,
          foregroundImage: user!.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
          radius: MediaQuery.of(context).size.width * sizeWidth,
          child: user.photoUrl != null
              ? null
              : Text(
            user.fullname[0].toUpperCase(),
            style: TextStyle(color: avatarColorTx),
          ),
        );
      },
    );
  }
}
