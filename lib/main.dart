import 'package:flutter/material.dart';
import 'package:musicplayerui/providers/audio_provider.dart';
import 'package:musicplayerui/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      home: ChangeNotifierProvider(
        create: (_) => AudioProvider(),
        child: const HomeScreen(),
      ),
    );
  }
}
