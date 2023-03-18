// File created by
// Dunica David-Gabriel <FLTY>
// on 18/03/2023 13:48:04

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StandardButtonWithChange extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const StandardButtonWithChange({required bool isLoading, required bool isReady})
      : _isLoading = isLoading,
        _isReady = isReady;

  final bool _isReady;
  final bool _isLoading;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        if (_isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: _isReady
                  ? const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFF327BF5),
                    Color(0xFF258EF8),
                  ],
                ),
              )
                  : const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0x73327BF5),
                    Color(0x73258EF8),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.008,
                  ),
                  child: FittedBox(
                    child: _isReady
                        ? const Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'FontB',
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    )
                        : const Text(
                      'select a subcategory',
                      style: TextStyle(
                        fontFamily: 'FontR',
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
