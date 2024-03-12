import 'package:flutter/material.dart';
import 'package:flutter_practica_29feb/presentation/providers/chat_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_practica_29feb/config/theme/app_theme.dart';
import 'package:flutter_practica_29feb/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
          title: 'chat',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 0).theme(),
          home: const ChatScreen()),
    );
  }
}