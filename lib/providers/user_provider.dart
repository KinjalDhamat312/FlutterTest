import 'package:flutter/material.dart';
import 'package:test_flutter_app/utils/network_connectivity.dart';

import '../api/manager/common_api_manager.dart';
import '../database/database.dart';
import '../ui/dashboard/model/req_users.dart';
import '../ui/dashboard/model/res_users.dart';

class UserProvider extends ChangeNotifier {
  Stream<List<User>>? _currentUsers = Stream.empty();

  Stream<List<User>>? get homeUsersEntries => _currentUsers;

  final MyDatabase db;

  UserProvider() : db = MyDatabase() {
    _currentUsers = db.watchAllUser();
    getUsers();
  }

  /* Fetch user data from remote server */
  void getUsers() async {
    if (await checkNetworkConnection()) {
      var result = await CommonApiManager().getUserData(ReqUsers(results: 50));
      if (result is ResUsers) {
        notifyListeners();
        storeUserLocally(result.results ?? []);
      }
    }
  }

  /* Insert User in local database */
  void storeUserLocally(List<UserResults> users) async {
    var userList = users
        .map((element) => User(
              gender: element.gender,
              name: element.name,
              location: element.location,
              email: element.email,
              login: element.login,
              dob: element.dob,
              phone: element.phone,
              cell: element.cell ?? "",
              id: element.id,
              picture: element.picture,
            ))
        .toList();
    await db.insertUsers(userList);
  }
}
