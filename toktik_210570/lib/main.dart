import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_210570/config/app_theme.dart';
import 'package:toktik_210570/config/presentation/providers/discover_provider.dart';
import 'package:toktik_210570/config/presentation/screens/discover_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTik 210570',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreens(),
      ),
    );
  }
}