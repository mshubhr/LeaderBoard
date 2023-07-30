import 'package:flutter/material.dart';
import 'package:paynav/notifier.dart';
import 'package:provider/provider.dart';
import 'package:paynav/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsersData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        home: const Home(),
      ),
    );
  }
}
