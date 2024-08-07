import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'config/routes/routes.dart';
import 'core/utils/cache_helper.dart';
import 'core/utils/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  var user = CacheHelper.getData("User");
  String route;
  if (user == null) {
    route = Routes.login;
  } else {
    route = Routes.home;
  }
  runApp(MyApp(route));
}
