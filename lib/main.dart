import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trogon_test/service/provider.dart';
import 'package:trogon_test/view/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderData>(
      create: (context) => ProviderData(),
      child: MaterialApp(
        home: Homepage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
