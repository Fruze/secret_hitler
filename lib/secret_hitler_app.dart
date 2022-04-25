import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/feature/register/presentation/register_page.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_page.dart';
import 'package:secret_hitler/navigation/navigation_service.dart';
import 'package:secret_hitler/secret_hitler_app.dart';

class SecretHitlerApp extends StatefulWidget {
  const SecretHitlerApp({Key? key}) : super(key: key);

  @override
  State<SecretHitlerApp> createState() => _SecretHitlerAppState();
}

class _SecretHitlerAppState extends State<SecretHitlerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Secret Hitler',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Router(routerDelegate: MyRouterDelegate()));
  }
}

// ROUTER
class MyRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  bool showOtherPage = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NAVCUBIT,
      child: BlocBuilder<NavigationCubit, List<Page>>(
        builder: (BuildContext context, state) {
          print('hahaha $state');

          return Navigator(
            key: navigatorKey,
            pages: state,
            onPopPage: (route, result) {
              print('hahaha route result $route $result');
              print('hahaha route result $route $result');

              final didPop = route.didPop(result);

              print('hahaha $didPop');
              // if (didPop) {
              //   showOtherPage = false;
              //   notifyListeners();
              // }

              return didPop;
            },
          );
        },
      ),
    );
  }

  // We don't use named navigation so we don't use this
  @override
  Future<void> setNewRoutePath(configuration) async {
    print('hahaha $configuration');

    return;
  }
}

// CUBIT
// abstract class NavigationState {}
//
// class NavigationStateSplash extends NavigationState {}
//
// class NavigationStateLogin extends NavigationState {}

final NAVCUBIT = NavigationCubit();
class NavigationCubit extends Cubit<List<Page>> {
  NavigationCubit() : super([const SplashPage()]);

  List<Page> pages = [
    const SplashPage(),
  ];

  void push(Page page) {
    pages.add(page);
    emit(pages.toList());
  }

  void pop(Type pageType) {
    pages.removeLast();
    emit(pages.toList());
  }

}
