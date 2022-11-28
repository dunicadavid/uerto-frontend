// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:53:34

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
])
Serializers serializers = (_$serializers.toBuilder() //
  ..addPlugin(StandardJsonPlugin()))
    .build();
