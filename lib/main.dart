import 'app/routes/routes.dart';
import '/app/shared/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jash Desai',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.splashRoute,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFFDB7093,
          myColorCodes,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Jash Desai')),
        ),
      ),
    );
  }
}
