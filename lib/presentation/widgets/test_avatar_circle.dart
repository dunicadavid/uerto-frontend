// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 12:47:01

import 'package:flutter/material.dart';
import 'package:uerto/containers/user_container.dart';
import 'package:uerto/models/index.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    Key? key,
    required this.sizeRadius,
    required this.avatarColorTx,
    required this.avatarColorBg,
  })  : assert(sizeRadius != null),
        assert(avatarColorTx != null),
        assert(avatarColorBg != null),
        super(key: key);

  final double sizeRadius;
  final Color avatarColorTx;
  final Color avatarColorBg;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: avatarColorBg,
              radius: sizeRadius,
              child: user!.photoUrl != null
                  ? Image.network(
                      'https://localhost:3000/users/profile-image/${user.photoUrl!}',
                      fit: BoxFit.cover,
                    )
                  : Text(
                      user.fullname[0].toUpperCase() + user.fullname.split(' ')[1][0].toUpperCase(),
                      style: TextStyle(color: avatarColorTx, fontWeight: FontWeight.w600),
                    ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: avatarColorTx,
                    border: Border.all(width: 2, color: Theme.of(context).canvasColor)),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
