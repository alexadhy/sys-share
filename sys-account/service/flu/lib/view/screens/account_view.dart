import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:sys_share_sys_account_service/view/widgets/auth_nav_layout.dart';
import 'package:sys_share_sys_account_service/view/widgets/nav_rail.dart';

class AccountView extends StatelessWidget {
  final LinkedHashMap<String, TabItem> tabs;
  final Widget body;

  const AccountView({Key key, @required this.tabs, @required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthNavLayout(
      body: body,
      tabs: tabs,
    );
  }
}
