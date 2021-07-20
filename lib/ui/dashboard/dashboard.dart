import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../database/database.dart';
import '../../providers/user_provider.dart';
import '../../utils/app_string.dart';
import '../../utils/dimens.dart';
import '../../utils/text_styles.dart';
import '../../widgets/function_widgets.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
      lazy: false,
      create: (context) => UserProvider(),
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              AppStrings.labelAppName,
              style: textStyleAsapSemiBold(
                  color: Colors.white, fontSize: fontLarge1),
            ),
          ),
          body:
              Consumer<UserProvider>(builder: (context, valueProvider, child) {
            return StreamBuilder<List<User>>(
              stream: valueProvider.homeUsersEntries,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Container(
                    alignment: Alignment.center,
                    child: getProgressBar(),
                  );
                }
                return _createUserList(snapshot.data ?? [], context);
              },
            );
          }),
        ),
      ),
    );
  }

  ListView _createUserList(List<User> users, BuildContext context) =>
      ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return _createListItem(users[index], context);
        },
      );

  Container _createListItem(User user, BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(
          horizontal: spacingMedium, vertical: spacingSmall),
      margin: const EdgeInsets.symmetric(
          horizontal: spacingMedium, vertical: spacingSmall),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name?.first ?? ""} ${user.name?.last ?? ""}",
                  style: textStyleAsapSemiBold(fontSize: fontMedium3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: spacingTiny),
                  child: Text(
                    user.phone ?? "",
                    style: textStyleAsapMedium(color: Colors.grey),
                  ),
                ),
                Text(
                  user.location?.city ?? "",
                  style: textStyleAsapRegular(color: Colors.grey),
                ),
              ],
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(widthRatio(0.2, context)),
              ),
              child: Container(
                  width: widthRatio(0.2, context),
                  height: widthRatio(0.2, context),
                  color: Colors.grey.shade500,
                  child: getCachedImage(
                    user.picture?.large ?? "",
                  )))
        ],
      ));
}
