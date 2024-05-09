import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/providers/chat_provider.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        theme: AppTheme(selectedColor: 6).theme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const ChatScreen()
      ),
    );
  }
}