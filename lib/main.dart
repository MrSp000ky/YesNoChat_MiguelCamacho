import 'package:flutter/material.dart';
import 'package:flutter_practica_29feb/config/theme/app_theme.dart';
import 'package:flutter_practica_29feb/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Chat Yes/No App",
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: const ChatScreen(),
    );
  }
}
