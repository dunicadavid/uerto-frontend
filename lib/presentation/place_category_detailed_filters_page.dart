// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 11:44:22

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape_checkbox.dart';

import '../containers/place_filters_container.dart';
import '../models/index.dart';
import '../services/filters_list.dart';

class PlaceCategoryDetailedFilterPage extends StatefulWidget {
  const PlaceCategoryDetailedFilterPage({Key? key}) : super(key: key);

  @override
  State<PlaceCategoryDetailedFilterPage> createState() => _PlaceCategoryDetailedFilterPageState();
}

class _PlaceCategoryDetailedFilterPageState extends State<PlaceCategoryDetailedFilterPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return PlaceFiltersContainer(
      builder: (BuildContext context, List<String>? selectedFilters) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 10, bottom: selectedFilters!.isNotEmpty ? 90 : 0),
                      itemCount: Filters.filtersList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FilterItem(Filters.filtersList[index], index);
                      },
                    ),
                  ),
                ),
              ),
              if (selectedFilters.isNotEmpty)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 780,
                    ),
                    child: Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed('/placeFilter');
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 150),
                            height: height * 0.06,
                            width: width * 0.6,
                            decoration: BoxDecoration(
                              color: Theme.of(context).secondaryHeaderColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Align(
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
                                    Text(
                                      'Select (${selectedFilters.length})',
                                      style: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 22.0,
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
                                        child: const Icon(Icons.add),
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
                  ),
                )
              else
                Container(),
              AppBarUerto(
                colorFill: Theme.of(context).highlightColor,
                width: width,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 280),
                child: HexagonalShape(
                    size: 120,
                    colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                    colorStroke: Colors.transparent,
                    angle: 0.20943951,
                    strokeWidth: 0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 280),
                child: HexagonalShape(
                    size: 50,
                    colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                    colorStroke: Colors.transparent,
                    angle: -0.523598776,
                    strokeWidth: 0),
              ),
              SafeArea(
                child: Padding(
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
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/placeFilter');
                          },
                        ),
                        Text(
                          'Filters',
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
                            ///muta l de aici
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget FilterItem(String name, int index) {
    return PlaceFiltersContainer(
      builder: (BuildContext context, List<String>? selectedFilters) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).highlightColor,
            child: Icon(
              Icons.fastfood_rounded,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: HexagonalShapeCheckBox(size: 25, color: Theme.of(context).secondaryHeaderColor, onChange: selectedFilters!.contains(Filters.filtersList[index])),
          onTap: () {
            setState(
              () {
                if (selectedFilters.contains(Filters.filtersList[index])) {
                  StoreProvider.of<AppState>(context).dispatch(RemovePlacesFilters(Filters.filtersList[index]));
                } else {
                  StoreProvider.of<AppState>(context).dispatch(SetPlacesFilters(Filters.filtersList[index]));
                }
              },
            );
          },
        );
      },
    );
  }
}
