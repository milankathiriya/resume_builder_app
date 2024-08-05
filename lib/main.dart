import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/build_options_page.dart';
import 'package:resume_builder_app/views/screens/home_page.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/views/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.amber,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.red,
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => HomePage(),
        'splash_screen': (context) => SplashScreen(),
        'build_options_page': (context) => BuildOptionsPage(),
        // 'contact_info_page': (context) => ,
        // 'carrier_objective_page': (context) => ,
        // 'personal_details_page': (context) => ,
        // 'education_page': (context) => ,
        // 'experiences_page': (context) => ,
        // 'technical_skills_page': (context) => ,
        // 'interests_hobbies_page': (context) => ,
        // 'projects_page': (context) => ,
        // 'achievements_page': (context) => ,
        // 'references_page': (context) => ,
        // 'declaration_page': (context) => ,
      },
    ),
  );
}
