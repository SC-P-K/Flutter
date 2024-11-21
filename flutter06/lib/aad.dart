import 'package:flutter/material.dart';
import 'package:usage_stats/usage_stats.dart';


  class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
  super.initState();
  WidgetsBinding.instance.addObserver(this);
  }

  @override

  void dispose() {
  WidgetsBinding.instance.removeObserver(this);
  super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
  super.didChangeAppLifecycleState(state);
  if (state == AppLifecycleState.paused)
  // 앱이 백그라운드로 전환됨
  print("앱이 백그라운드로 전환됨");
  }

  elif({state = AppLifecycleState.resumed}) {
  // 앱이 포그라운드로 전환됨
  print("앱이 포그라운드로 전환됨");
  }

  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
  }
  }

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
  appBar: AppBar(title: Text("App Lifecycle Example")),
  body: Center(child: Text("App Lifecycle State Example")),
  ),
  );
  }