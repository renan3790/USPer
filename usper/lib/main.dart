import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:usper/authentication/login_screen.dart';
import 'package:usper/authentication/signup_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey:'Your API key',appId:'mobilesdk_app_id',messagingSenderId:'project_number',projectId:'project_id'
      )
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: LogInScreen(),
    );
  }
}

