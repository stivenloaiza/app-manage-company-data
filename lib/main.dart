import 'package:app_manage_company_data/common/home.page.dart';
import 'package:flutter/material.dart';
import 'package:app_manage_company_data/common/configuration.dart' as cg;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: cg.nameApp,
        theme: ThemeData(
          primaryColor: cg.primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomePage()
    );
  }
}


