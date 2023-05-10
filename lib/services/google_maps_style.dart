//// File created by
// Dunica David-Gabriel <FLTY>
// on 30/03/2023 12:36:01

class Utils {
  String name = 'Uerto';
  static String mapStyle = '''
  [
  {
    "featureType": "administrative",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "visibility": "on"
      },
      {
        "weight": 1
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#5481a0"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      }
    ]
  },
  {
    "featureType": "landscape.natural.landcover",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      }
    ]
  },
  {
    "featureType": "landscape.natural.terrain",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#cfd3d8"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      },
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.government",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#5481a0"
      }
    ]
  },
  {
    "featureType": "poi.medical",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#9dd2ad"
      },
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.place_of_worship",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#d3dde4"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#4c54ef"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#b4c6e4"
      }
    ]
  },
  {
    "featureType": "transit.station.airport",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#cbd5dc"
      }
    ]
  },
  {
    "featureType": "transit.station.airport",
    "elementType": "labels.icon",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "transit.station.airport",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "transit.station.bus",
    "elementType": "labels.icon",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "transit.station.bus",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "transit.station.rail",
    "elementType": "labels.icon",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "transit.station.rail",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#16a5fb"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#6d9be3"
      }
    ]
  }
]''';

  static String urlStyle = 'style=feature%3Aadministrative%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Cweight%3A1%7C&style=feature%3Aadministrative.neighborhood%7Celement%3Alabels.text.fill%7Ccolor%3A0x16a5fb%7C&style=feature%3Alandscape%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7C&style=feature%3Alandscape%7Celement%3Ageometry.stroke%7Cvisibility%3Aoff%7C&style=feature%3Alandscape%7Celement%3Alabels%7Cvisibility%3Aoff%7C&style=feature%3Alandscape.man_made%7Celement%3Ageometry.stroke%7Cvisibility%3Aoff%7C&style=feature%3Alandscape.man_made%7Celement%3Alabels.text.stroke%7Ccolor%3A0x5481a0%7C&style=feature%3Alandscape.natural%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7C&style=feature%3Alandscape.natural.landcover%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7C&style=feature%3Alandscape.natural.terrain%7Celement%3Ageometry.fill%7Ccolor%3A0xcfd3d8%7C&style=feature%3Apoi%7Celement%3Ageometry.fill%7Cvisibility%3Aoff%7C&style=feature%3Apoi%7Celement%3Alabels.icon%7Cvisibility%3Aoff%7C&style=feature%3Apoi.attraction%7Celement%3Alabels%7Cvisibility%3Aoff%7C&style=feature%3Apoi.business%7Celement%3Aall%7Cvisibility%3Aoff%7C&style=feature%3Apoi.business%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7Cvisibility%3Aon%7C&style=feature%3Apoi.government%7Celement%3Ageometry.fill%7Ccolor%3A0x5481a0%7C&style=feature%3Apoi.medical%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7C&style=feature%3Apoi.park%7Celement%3Ageometry.fill%7Ccolor%3A0x9dd2ad%7Cvisibility%3Aon%7C&style=feature%3Apoi.place_of_worship%7Celement%3Ageometry.fill%7Ccolor%3A0xd3dde4%7C&style=feature%3Apoi.school%7Celement%3Alabels%7Cvisibility%3Aoff%7C&style=feature%3Apoi.school%7Celement%3Alabels.text%7Cvisibility%3Aoff%7C&style=feature%3Aroad.highway%7Celement%3Ageometry.fill%7Ccolor%3A0x16a5fb%7C&style=feature%3Aroad.highway%7Celement%3Ageometry.stroke%7Ccolor%3A0x4c54ef%7C&style=feature%3Aroad.local%7Celement%3Ageometry.fill%7Ccolor%3A0xffffff%7C&style=feature%3Atransit.line%7Celement%3Ageometry.fill%7Ccolor%3A0xb4c6e4%7C&style=feature%3Atransit.station.airport%7Celement%3Ageometry.fill%7Ccolor%3A0xcbd5dc%7C&style=feature%3Atransit.station.airport%7Celement%3Alabels.icon%7Ccolor%3A0x16a5fb%7C&style=feature%3Atransit.station.airport%7Celement%3Alabels.text.fill%7Ccolor%3A0x16a5fb%7C&style=feature%3Atransit.station.bus%7Celement%3Alabels.icon%7Ccolor%3A0x16a5fb%7C&style=feature%3Atransit.station.bus%7Celement%3Alabels.text.fill%7Ccolor%3A0x16a5fb%7C&style=feature%3Atransit.station.rail%7Celement%3Alabels.icon%7Ccolor%3A0x16a5fb%7C&style=feature%3Atransit.station.rail%7Celement%3Alabels.text.fill%7Ccolor%3A0x16a5fb%7C&style=feature%3Awater%7Celement%3Ageometry.fill%7Ccolor%3A0x6d9be3%7C';
}

