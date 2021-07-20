import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../converter.dart';

class Users extends Table {
  TextColumn get gender => text().nullable()();

  TextColumn get name => text().map(const NameConverter()).nullable()();

  TextColumn get location => text().map(const LocationConverter()).nullable()();

  TextColumn get email => text().nullable()();

  TextColumn get login => text().map(const LoginConverter()).nullable()();

  TextColumn get dob => text().map(const DobConverter()).nullable()();

  TextColumn get phone => text().nullable()();

  TextColumn get cell => text().withDefault(const Constant("0"))();

  TextColumn get id => text().map(const IdConverter()).nullable()();

  TextColumn get picture => text().map(const PictureConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {cell};
}
