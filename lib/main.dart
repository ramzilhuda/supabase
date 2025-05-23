import 'package:flutter/material.dart';
import 'package:supabase_app/pages/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://etbpuuyyljexgnbbizns.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV0YnB1dXl5bGpleGduYmJpem5zIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc4MDc0NTEsImV4cCI6MjA2MzM4MzQ1MX0.I-PsduwZ0EBxLiWggLHaEzDuVrO0M7BRdDy0vxEUNCo',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
