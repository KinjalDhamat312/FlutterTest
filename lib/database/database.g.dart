// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final String? gender;
  final Name? name;
  final Location? location;
  final String? email;
  final Login? login;
  final Dob? dob;
  final String? phone;
  final String cell;
  final Id? id;
  final Picture? picture;
  User(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.login,
      this.dob,
      this.phone,
      required this.cell,
      this.id,
      this.picture});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      gender: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      name: $UsersTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])),
      location: $UsersTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location'])),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      login: $UsersTable.$converter2.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}login'])),
      dob: $UsersTable.$converter3.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dob'])),
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      cell: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cell'])!,
      id: $UsersTable.$converter4.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])),
      picture: $UsersTable.$converter5.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}picture'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String?>(gender);
    }
    if (!nullToAbsent || name != null) {
      final converter = $UsersTable.$converter0;
      map['name'] = Variable<String?>(converter.mapToSql(name));
    }
    if (!nullToAbsent || location != null) {
      final converter = $UsersTable.$converter1;
      map['location'] = Variable<String?>(converter.mapToSql(location));
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || login != null) {
      final converter = $UsersTable.$converter2;
      map['login'] = Variable<String?>(converter.mapToSql(login));
    }
    if (!nullToAbsent || dob != null) {
      final converter = $UsersTable.$converter3;
      map['dob'] = Variable<String?>(converter.mapToSql(dob));
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String?>(phone);
    }
    map['cell'] = Variable<String>(cell);
    if (!nullToAbsent || id != null) {
      final converter = $UsersTable.$converter4;
      map['id'] = Variable<String?>(converter.mapToSql(id));
    }
    if (!nullToAbsent || picture != null) {
      final converter = $UsersTable.$converter5;
      map['picture'] = Variable<String?>(converter.mapToSql(picture));
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      login:
          login == null && nullToAbsent ? const Value.absent() : Value(login),
      dob: dob == null && nullToAbsent ? const Value.absent() : Value(dob),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      cell: Value(cell),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      gender: serializer.fromJson<String?>(json['gender']),
      name: serializer.fromJson<Name?>(json['name']),
      location: serializer.fromJson<Location?>(json['location']),
      email: serializer.fromJson<String?>(json['email']),
      login: serializer.fromJson<Login?>(json['login']),
      dob: serializer.fromJson<Dob?>(json['dob']),
      phone: serializer.fromJson<String?>(json['phone']),
      cell: serializer.fromJson<String>(json['cell']),
      id: serializer.fromJson<Id?>(json['id']),
      picture: serializer.fromJson<Picture?>(json['picture']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gender': serializer.toJson<String?>(gender),
      'name': serializer.toJson<Name?>(name),
      'location': serializer.toJson<Location?>(location),
      'email': serializer.toJson<String?>(email),
      'login': serializer.toJson<Login?>(login),
      'dob': serializer.toJson<Dob?>(dob),
      'phone': serializer.toJson<String?>(phone),
      'cell': serializer.toJson<String>(cell),
      'id': serializer.toJson<Id?>(id),
      'picture': serializer.toJson<Picture?>(picture),
    };
  }

  User copyWith(
          {String? gender,
          Name? name,
          Location? location,
          String? email,
          Login? login,
          Dob? dob,
          String? phone,
          String? cell,
          Id? id,
          Picture? picture}) =>
      User(
        gender: gender ?? this.gender,
        name: name ?? this.name,
        location: location ?? this.location,
        email: email ?? this.email,
        login: login ?? this.login,
        dob: dob ?? this.dob,
        phone: phone ?? this.phone,
        cell: cell ?? this.cell,
        id: id ?? this.id,
        picture: picture ?? this.picture,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('gender: $gender, ')
          ..write('name: $name, ')
          ..write('location: $location, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('dob: $dob, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('id: $id, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      gender.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              location.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      login.hashCode,
                      $mrjc(
                          dob.hashCode,
                          $mrjc(
                              phone.hashCode,
                              $mrjc(cell.hashCode,
                                  $mrjc(id.hashCode, picture.hashCode))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.gender == this.gender &&
          other.name == this.name &&
          other.location == this.location &&
          other.email == this.email &&
          other.login == this.login &&
          other.dob == this.dob &&
          other.phone == this.phone &&
          other.cell == this.cell &&
          other.id == this.id &&
          other.picture == this.picture);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String?> gender;
  final Value<Name?> name;
  final Value<Location?> location;
  final Value<String?> email;
  final Value<Login?> login;
  final Value<Dob?> dob;
  final Value<String?> phone;
  final Value<String> cell;
  final Value<Id?> id;
  final Value<Picture?> picture;
  const UsersCompanion({
    this.gender = const Value.absent(),
    this.name = const Value.absent(),
    this.location = const Value.absent(),
    this.email = const Value.absent(),
    this.login = const Value.absent(),
    this.dob = const Value.absent(),
    this.phone = const Value.absent(),
    this.cell = const Value.absent(),
    this.id = const Value.absent(),
    this.picture = const Value.absent(),
  });
  UsersCompanion.insert({
    this.gender = const Value.absent(),
    this.name = const Value.absent(),
    this.location = const Value.absent(),
    this.email = const Value.absent(),
    this.login = const Value.absent(),
    this.dob = const Value.absent(),
    this.phone = const Value.absent(),
    required String cell,
    this.id = const Value.absent(),
    this.picture = const Value.absent(),
  }) : cell = Value(cell);
  static Insertable<User> custom({
    Expression<String?>? gender,
    Expression<Name?>? name,
    Expression<Location?>? location,
    Expression<String?>? email,
    Expression<Login?>? login,
    Expression<Dob?>? dob,
    Expression<String?>? phone,
    Expression<String>? cell,
    Expression<Id?>? id,
    Expression<Picture?>? picture,
  }) {
    return RawValuesInsertable({
      if (gender != null) 'gender': gender,
      if (name != null) 'name': name,
      if (location != null) 'location': location,
      if (email != null) 'email': email,
      if (login != null) 'login': login,
      if (dob != null) 'dob': dob,
      if (phone != null) 'phone': phone,
      if (cell != null) 'cell': cell,
      if (id != null) 'id': id,
      if (picture != null) 'picture': picture,
    });
  }

  UsersCompanion copyWith(
      {Value<String?>? gender,
      Value<Name?>? name,
      Value<Location?>? location,
      Value<String?>? email,
      Value<Login?>? login,
      Value<Dob?>? dob,
      Value<String?>? phone,
      Value<String>? cell,
      Value<Id?>? id,
      Value<Picture?>? picture}) {
    return UsersCompanion(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      email: email ?? this.email,
      login: login ?? this.login,
      dob: dob ?? this.dob,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      id: id ?? this.id,
      picture: picture ?? this.picture,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gender.present) {
      map['gender'] = Variable<String?>(gender.value);
    }
    if (name.present) {
      final converter = $UsersTable.$converter0;
      map['name'] = Variable<String?>(converter.mapToSql(name.value));
    }
    if (location.present) {
      final converter = $UsersTable.$converter1;
      map['location'] = Variable<String?>(converter.mapToSql(location.value));
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (login.present) {
      final converter = $UsersTable.$converter2;
      map['login'] = Variable<String?>(converter.mapToSql(login.value));
    }
    if (dob.present) {
      final converter = $UsersTable.$converter3;
      map['dob'] = Variable<String?>(converter.mapToSql(dob.value));
    }
    if (phone.present) {
      map['phone'] = Variable<String?>(phone.value);
    }
    if (cell.present) {
      map['cell'] = Variable<String>(cell.value);
    }
    if (id.present) {
      final converter = $UsersTable.$converter4;
      map['id'] = Variable<String?>(converter.mapToSql(id.value));
    }
    if (picture.present) {
      final converter = $UsersTable.$converter5;
      map['picture'] = Variable<String?>(converter.mapToSql(picture.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('gender: $gender, ')
          ..write('name: $name, ')
          ..write('location: $location, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('dob: $dob, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('id: $id, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  late final GeneratedColumn<String?> gender = GeneratedColumn<String?>(
      'gender', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumnWithTypeConverter<Name, String?> name =
      GeneratedColumn<String?>('name', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Name>($UsersTable.$converter0);
  final VerificationMeta _locationMeta = const VerificationMeta('location');
  late final GeneratedColumnWithTypeConverter<Location, String?> location =
      GeneratedColumn<String?>('location', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Location>($UsersTable.$converter1);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _loginMeta = const VerificationMeta('login');
  late final GeneratedColumnWithTypeConverter<Login, String?> login =
      GeneratedColumn<String?>('login', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Login>($UsersTable.$converter2);
  final VerificationMeta _dobMeta = const VerificationMeta('dob');
  late final GeneratedColumnWithTypeConverter<Dob, String?> dob =
      GeneratedColumn<String?>('dob', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Dob>($UsersTable.$converter3);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _cellMeta = const VerificationMeta('cell');
  late final GeneratedColumn<String?> cell = GeneratedColumn<String?>(
      'cell', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumnWithTypeConverter<Id, String?> id =
      GeneratedColumn<String?>('id', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Id>($UsersTable.$converter4);
  final VerificationMeta _pictureMeta = const VerificationMeta('picture');
  late final GeneratedColumnWithTypeConverter<Picture, String?> picture =
      GeneratedColumn<String?>('picture', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<Picture>($UsersTable.$converter5);
  @override
  List<GeneratedColumn> get $columns =>
      [gender, name, location, email, login, dob, phone, cell, id, picture];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    context.handle(_nameMeta, const VerificationResult.success());
    context.handle(_locationMeta, const VerificationResult.success());
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    context.handle(_loginMeta, const VerificationResult.success());
    context.handle(_dobMeta, const VerificationResult.success());
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('cell')) {
      context.handle(
          _cellMeta, cell.isAcceptableOrUnknown(data['cell']!, _cellMeta));
    } else if (isInserting) {
      context.missing(_cellMeta);
    }
    context.handle(_idMeta, const VerificationResult.success());
    context.handle(_pictureMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cell};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }

  static TypeConverter<Name, String> $converter0 = const NameConverter();
  static TypeConverter<Location, String> $converter1 =
      const LocationConverter();
  static TypeConverter<Login, String> $converter2 = const LoginConverter();
  static TypeConverter<Dob, String> $converter3 = const DobConverter();
  static TypeConverter<Id, String> $converter4 = const IdConverter();
  static TypeConverter<Picture, String> $converter5 = const PictureConverter();
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
