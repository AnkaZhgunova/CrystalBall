import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AnswerProvider>.value(value: AnswerProvider()),
      ],
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}

