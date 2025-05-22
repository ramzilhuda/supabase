import 'package:supabase_app/pages/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class AuthService {
  final supabase = Supabase.instance.client;
  Future<void> login(
      String? email, String password, BuildContext context) async {
    try {
      final AuthResponse res = await supabase.auth
          .signInWithPassword(email: email, password: password);

      final User? user = res.user;
      if (user != null) {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }), (route) => false);
      }
    } on AuthApiException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            e.message,
            style: TextStyle(color: Colors.white),
          )));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          )));
    }
  }
}
