import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../ui/dashboard/model/res_users.dart';
import 'converter.dart';
import 'tables/users.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Users])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<User>>? watchAllUser() => select(users).watch();

  Future<void> createOrUpdateUser(User user) {
    return into(users).insertOnConflictUpdate(user);
  }

  Future<void> insertUsers(List<User> usersList) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(users, usersList);
    });
  }
}
