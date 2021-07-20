import 'dart:convert';

import 'package:moor_flutter/moor_flutter.dart';

import '../ui/dashboard/model/res_users.dart';

/*
* This call contain converter for store  data class
* */
class NameConverter extends TypeConverter<Name, String> {
  const NameConverter();

  @override
  Name? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Name.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Name? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}

class LocationConverter extends TypeConverter<Location, String> {
  const LocationConverter();

  @override
  Location? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Location.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Location? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}

class LoginConverter extends TypeConverter<Login, String> {
  const LoginConverter();

  @override
  Login? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Login.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Login? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}

class DobConverter extends TypeConverter<Dob, String> {
  const DobConverter();

  @override
  Dob? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Dob.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Dob? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}

class IdConverter extends TypeConverter<Id, String> {
  const IdConverter();

  @override
  Id? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Id.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Id? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}

class PictureConverter extends TypeConverter<Picture, String> {
  const PictureConverter();

  @override
  Picture? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return Picture.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Picture? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}
