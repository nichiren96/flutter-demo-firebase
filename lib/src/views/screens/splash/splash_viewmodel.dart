import 'dart:async';

import 'package:cuisine/src/helpers/navigation_helper.dart';
//import 'package:cuisine/src/views/screens/login/login_view.dart';
import 'package:cuisine/src/views/screens/register/register_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  void init(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      goto(context, RegisterView());
    });
  }
}
