import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutVerification(),
    );
  }
}

class LayoutVerification extends StatelessWidget {
  const LayoutVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          //Modile
          return const HomePageMobile(layoutMobile: true);
        } else {
          //Descktop ou WEB
          return const HomePage(layoutMobile: false);
        }
      },
    );
  }
}

class HomePageMobile extends StatelessWidget {
  final bool layoutMobile;
  const HomePageMobile({Key? key, required this.layoutMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text("Home Page Mobile"),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool layoutMobile;
  const HomePage({Key? key, required this.layoutMobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(child: Text("Home Page Descktop ou WEB"));
  }
}
