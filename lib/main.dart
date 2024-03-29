import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_favorite_app/controller/favorite_provider.dart';
import 'package:provider_favorite_app/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
