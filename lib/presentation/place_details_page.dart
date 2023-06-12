// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 19:40:38

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/place_container.dart';
import 'package:uerto/containers/user_container.dart';
import 'package:uerto/models/index.dart';
import '../services/google_maps_style.dart';
import '../services/notification_service.dart';

class PlaceDetailsPage extends StatefulWidget {
  const PlaceDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlaceDetailsPage> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  int _clickedIndex = -1; // indexul activitatii selectate de user
  int _partySize = 1; // party size ales de user
  late String _chosenDate; // data aleasa in format db
  late String _chosenHour = ''; // ora aleasa pentru db
  late int _chosenHourIndex = -1; // indexul disponibilitatii pentru db
  late DateTime _notificationDateTime; //se formeaza un DateTime pentru notification schedule
  bool _isDateChosen = false; // utilizat pentru null check safty atunci cand apare lista de date pe UI
  int isFavourite = -1; //favourite check
  int _currentSlide = 0; //indexul imaginii curente

  final List<String> _placeFilters = [
    'Restaurant',
    'Outside',
    'Italian',
    'Pasta',
    'Pet Friendly',
    'Vegetarian',
  ];

  void _onResultGetPlaceActivityAvailability(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      setState(() {
        _isDateChosen = true;
      });
    }
  }

  void _onResultGetPlaceActivities(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        barrierColor: Colors.black.withOpacity(0.1),
        elevation: 10,
        context: context,
        builder: (BuildContext context) {
          final double height = MediaQuery.of(context).size.height;
          final double width = MediaQuery.of(context).size.width;
          return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
            return PlaceContainer(
              builder: (BuildContext context, Place? place) {
                return UserContainer(builder: (BuildContext context, AppUser? user) {
                  return Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.transparent,
                    height: 450,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 450,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 4, bottom: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xddD1D1D1),
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                    ),
                                    height: 4,
                                    width: width * 0.15,
                                  ),
                                ),
                                Text(
                                  'Reserve an activity!',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Container(
                                  height: 50,
                                  width: width,
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Select party size: $_partySize',
                                        style: TextStyle(
                                          color: Theme.of(context).secondaryHeaderColor,
                                          fontSize: 16.0,
                                          fontFamily: 'Plus',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: const Size(40, 40),
                                          backgroundColor: Theme.of(context).highlightColor,
                                          elevation: 0,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(50)),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (_partySize > 1) {
                                              _clickedIndex = -1;
                                              _chosenHour = '';
                                              _chosenHourIndex = -1;
                                              _isDateChosen = false;
                                              _partySize--;
                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(const DeletePlaceActivityAvailability());
                                            }
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Theme.of(context).secondaryHeaderColor,
                                          size: 20,
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: const Size(40, 40),
                                          backgroundColor: Theme.of(context).highlightColor,
                                          elevation: 0,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(50)),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _clickedIndex = -1;
                                            _chosenHour = '';
                                            _chosenHourIndex = -1;
                                            _isDateChosen = false;
                                            _partySize++;
                                            StoreProvider.of<AppState>(context)
                                                .dispatch(const DeletePlaceActivityAvailability());
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Theme.of(context).secondaryHeaderColor,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: DottedLine(
                                    direction: Axis.horizontal,
                                    lineLength: double.infinity,
                                    lineThickness: 2.0,
                                    dashLength: 4.0,
                                    dashColor: Theme.of(context).primaryColorDark.withOpacity(0.5),
                                    dashRadius: 0.0,
                                    dashGapLength: 4.0,
                                    dashGapColor: Colors.transparent,
                                    dashGapRadius: 0.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: StoreProvider.of<AppState>(context).state.placeActivities!.isNotEmpty
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                                            height: 150,
                                            width: width,
                                            color: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                                            alignment: Alignment.center,
                                            child: ListView.builder(
                                              itemCount: StoreProvider.of<AppState>(context)
                                                  .state
                                                  .placeActivities!
                                                  .toList()
                                                  .length,
                                              itemBuilder: (BuildContext context, int index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    _showDatePicker(index);
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(bottom: 5),
                                                    child: AnimatedContainer(
                                                      duration: const Duration(milliseconds: 50),
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: index == _clickedIndex
                                                            ? Theme.of(context).highlightColor
                                                            : Theme.of(context).secondaryHeaderColor,
                                                        borderRadius: BorderRadius.circular(8),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          StoreProvider.of<AppState>(context)
                                                              .state
                                                              .placeActivities!
                                                              .toList()[index]
                                                              .name,
                                                          style: TextStyle(
                                                            color: index == _clickedIndex
                                                                ? Theme.of(context).secondaryHeaderColor
                                                                : Theme.of(context).primaryColor,
                                                            fontSize: 15.0,
                                                            fontFamily: 'Plus',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        )
                                      : Center(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                height: 200,
                                                width: 200,
                                                color: Colors.blueGrey,
                                              ),
                                              Text(
                                                'There are no activities yet! Come back later.',
                                                style: Theme.of(context).textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                                  child: DottedLine(
                                    direction: Axis.horizontal,
                                    lineLength: double.infinity,
                                    lineThickness: 2.0,
                                    dashLength: 4.0,
                                    dashColor: Theme.of(context).primaryColorDark.withOpacity(0.5),
                                    dashRadius: 0.0,
                                    dashGapLength: 4.0,
                                    dashGapColor: Colors.transparent,
                                    dashGapRadius: 0.0,
                                  ),
                                ),
                                if (_isDateChosen == true)
                                  if (StoreProvider.of<AppState>(context)
                                      .state
                                      .placeActivityAvailability!
                                      .toList()
                                      .isNotEmpty)
                                    Container(
                                      height: 30,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        physics: const BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: StoreProvider.of<AppState>(context)
                                            .state
                                            .placeActivityAvailability!
                                            .toList()
                                            .length,
                                        itemBuilder: (BuildContext context, int indexRow) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _chosenHour = StoreProvider.of<AppState>(context)
                                                    .state
                                                    .placeActivityAvailability!
                                                    .toList()[indexRow]
                                                    .hour;
                                                _chosenHourIndex = indexRow;
                                                _notificationDateTime = DateTime.parse('$_chosenDate $_chosenHour');
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration: const Duration(milliseconds: 50),
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(left: indexRow != 0 ? 5 : 0),
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: StoreProvider.of<AppState>(context)
                                                            .state
                                                            .placeActivityAvailability!
                                                            .toList()[indexRow]
                                                            .hour ==
                                                        _chosenHour
                                                    ? Theme.of(context).highlightColor
                                                    : Theme.of(context).secondaryHeaderColor,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                StoreProvider.of<AppState>(context)
                                                    .state
                                                    .placeActivityAvailability!
                                                    .toList()[indexRow]
                                                    .hour,
                                                style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: StoreProvider.of<AppState>(context)
                                                              .state
                                                              .placeActivityAvailability!
                                                              .toList()[indexRow]
                                                              .hour ==
                                                          _chosenHour
                                                      ? Theme.of(context).secondaryHeaderColor
                                                      : Theme.of(context).primaryColor,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  else if (StoreProvider.of<AppState>(context)
                                      .state
                                      .placeActivityAvailability!
                                      .toList()
                                      .isEmpty && _isDateChosen == true)
                                    Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          color: Colors.blueGrey,
                                        ),
                                        const Text(
                                          'There are no timeslots available on this date.',
                                          style: TextStyle(
                                            color: Color(0xff24272c),
                                            fontSize: 15.0,
                                            fontFamily: 'Plus',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                else
                                  Container(),
                                if (_isDateChosen && _chosenHour != '')
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          ///make reservation
                                          StoreProvider.of<AppState>(context).dispatch(CreateReservation(
                                              place!.idplace,
                                              StoreProvider.of<AppState>(context)
                                                  .state
                                                  .placeActivities![_clickedIndex]
                                                  .idactivity,
                                              StoreProvider.of<AppState>(context)
                                                  .state
                                                  .placeActivityAvailability![_chosenHourIndex]
                                                  .idactivitySeating,
                                              user!.userId,
                                              _chosenDate,
                                              _chosenHour,
                                              _partySize,
                                              _onResultCreateReservation));
                                        });
                                      },
                                      child: Container(
                                        height: height * 0.06,
                                        width: width * 0.45,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).secondaryHeaderColor,
                                          borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                                                const Text(
                                                  'Finish',
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                    fontSize: 20.0,
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
                                                    child: const Icon(CupertinoIcons.forward),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                else
                                  Container(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
              },
            );
          });
        },
      );
    }
  }

  void _onResultCreateReservation(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      if (isFavourite != StoreProvider.of<AppState>(context).state.placeDetails!.favourite && isFavourite != -1) {
        final AppState store = StoreProvider.of<AppState>(context).state;
        StoreProvider.of<AppState>(context)
            .dispatch(SetPlaceFavourite(store.user!.userId, store.placeDetails!.idplace, isFavourite));
      }

      _notificationDateTime = _notificationDateTime.subtract(const Duration(hours: 1));

      if (_notificationDateTime.isAfter(DateTime.now())) {
        NotificationService().scheduleNotification(
            title: 'Hurry up!',
            body: 'Your reservation is in 1 hour',
            scheduledNotificationDateTime: _notificationDateTime);
        NotificationService().showNotification(title: 'Reservation Created!', body: 'Stay in touch!');
      }

      Navigator.of(context).pushReplacementNamed('/main');
    }
  }

  void _showDatePicker(int index) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).highlightColor, // Set the primary color
              onPrimary: Theme.of(context).secondaryHeaderColor, // Set the text color on the primary color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).secondaryHeaderColor, // Set the text color for the buttons
              ),
            ),
          ),
          child: child!,
        );
      },
    ).then((DateTime? value) {
      final String day = value!.day < 10 ? '0${value.day}' : value.day.toString();
      final String month = value.month < 10 ? '0${value.month}' : value.month.toString();

      _chosenDate = '${value.year}-$month-$day';

      setState(() {
        StoreProvider.of<AppState>(context).dispatch(
          GetPlaceActivityAvailability(
            StoreProvider.of<AppState>(context).state.placeActivities!.toList()[index].idactivity,
            _chosenDate,
            _partySize,
            _onResultGetPlaceActivityAvailability,
          ),
        );
        _chosenHour = '';
        _chosenHourIndex = -1;
        _clickedIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return PlaceContainer(
      builder: (BuildContext context, Place? place) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      CarouselSlider(
                        items: place?.images?.map((String image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Image.network(
                                  'https://10.0.2.2:3000/images/places/$image',
                                  fit: BoxFit.fill,
                                ),
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: 230.0,
                          initialPage: 0,
                          onPageChanged: (int index, _) {
                            setState(() {
                              _currentSlide = index;
                            });
                            print(_currentSlide);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                place!.name,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                                  color: Theme.of(context).highlightColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star_rounded,
                                      color: Theme.of(context).secondaryHeaderColor,
                                      size: 20,
                                    ),
                                    Text(
                                      place.rating.toStringAsFixed(2),
                                      style: TextStyle(
                                        color: Theme.of(context).secondaryHeaderColor,
                                        fontSize: 17.0,
                                        fontFamily: 'Plus',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: width,
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              place.location,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 15.0,
                                fontFamily: 'Plus',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text(
                                (r'$' * place.price).toString(),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Container(
                          height: 40,
                          width: width,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          //color: Colors.blueGrey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      place.hoursOfOpp,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: 'Plus',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.restaurant_menu_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      'Menu',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: 'Plus',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      '0734567234',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: 'Plus',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 2.0,
                          dashLength: 4.0,
                          dashColor: Theme.of(context).primaryColorDark.withOpacity(0.5),
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        ),
                      ),
                      Container(
                        height: 105,
                        width: width,
                        padding: EdgeInsets.all(10),
                        //color: Colors.redAccent,
                        child: Wrap(
                          //alignment: WrapAlignment.spaceBetween,
                          spacing: 20,
                          runSpacing: 10,
                          children: List<Widget>.generate(
                            6,
                            (int index) => Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).highlightColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                ' ${_placeFilters[index]} ',
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 2.0,
                          dashLength: 4.0,
                          dashColor: Theme.of(context).primaryColorDark.withOpacity(0.5),
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ///to googlemaps
                        },
                        child: Container(
                          height: 160,
                          width: 350,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://maps.googleapis.com/maps/api/staticmap?center=${place.latitude},${place.longitude}&zoom=14&size=350x160&maptype=roadmap&${Utils.urlStyle}&markers=color:0xd3f36a%7Clabel:X%7C${place.latitude},${place.longitude}&key=AIzaSyCzEElzedwILPIL_YDtHlKOWWDdOpUAm2A',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: place.images!.map((String image) {
                        final int index = place.images!.indexOf(image);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentSlide == index
                                ? Theme.of(context).highlightColor
                                : Theme.of(context).primaryColorDark.withOpacity(0.5),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 515, left: 320),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                      child: Icon(
                        CupertinoIcons.map_pin,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.022,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (isFavourite != place.favourite && isFavourite != -1) {
                                StoreProvider.of<AppState>(context)
                                    .dispatch(SetPlaceFavourite(user!.userId, place.idplace, isFavourite));
                              }
                              Navigator.of(context).pushReplacementNamed('/placeResult');
                            },
                            child: Container(
                              height: width * 0.11,
                              width: width * 0.11,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).highlightColor,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const <BoxShadow>[
                                    BoxShadow(
                                      color: Color(0x20000000),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(1, 8),
                                    )
                                  ]),
                              child: Icon(
                                CupertinoIcons.back,
                                color: Theme.of(context).secondaryHeaderColor,
                                size: 30,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (isFavourite == -1) {
                                  isFavourite = place.favourite == 1 ? 0 : 1;
                                } else {
                                  isFavourite = isFavourite == 1 ? 0 : 1;
                                }
                              });
                            },
                            icon: isFavourite == 1 || (isFavourite == -1 && place.favourite == 1)
                                ? const Icon(Icons.star_rounded, size: 33)
                                : const Icon(Icons.star_border_rounded, size: 33),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            StoreProvider.of<AppState>(context)
                                .dispatch(GetPlaceActivities(place.idplace, _onResultGetPlaceActivities));
                          });
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                                  const Text(
                                    'Make a reservation',
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 20.0,
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
                                      child: const Icon(CupertinoIcons.calendar),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
