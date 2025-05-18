import 'package:flutter/material.dart';
import 'screens/mood_selection_screen.dart';

void main() {
  runApp(BookMoodApp());
}

class BookMoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Mood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        textTheme: Typography.blackCupertino,
      ),
      home: MoodSelectionScreen(),
    );
  }
}
