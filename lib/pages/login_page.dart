import 'package:flutter/material.dart';
import 'package:project_chat/components/id.textfield.dart';
import 'package:project_chat/components/tombol/tombol.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _emailController =
      TextEditingController();

  final TextEditingController _pwControlller =
      TextEditingController();
      
        get login => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),

            Text(
              "Selamat datang kembali!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            IdTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),

            IdTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwControlller,
            ),

            Tombol(
              text: "Login", 
              onTap: login,
            ),
          ],
        ),
      ),
    );
  }
}