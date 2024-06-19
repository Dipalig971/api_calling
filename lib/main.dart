import 'package:api_calling/screen/api/provider/api_provider.dart';
import 'package:api_calling/screen/api/view/api_screen.dart';
import 'package:api_calling/screen/wallpaper/provider/wallpaper_provider.dart';
import 'package:api_calling/screen/wallpaper/view/wallpaper_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => TODOProvider(),),
    ChangeNotifierProvider(create: (context) => HomeProvider(),),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WallPaperScreen(),
    );
  }
}
