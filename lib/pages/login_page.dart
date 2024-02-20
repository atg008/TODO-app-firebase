// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:travelchat/auth/auth_service.dart';
import 'package:travelchat/components/my_button.dart';
import 'package:travelchat/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // email and password text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  // tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  // login method
  void login() {
    // final authservice = Provider.of<AuthService>(context as BuildContext, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text
              Text(
                "TRAVELCHAT",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 16),
              ),

              const SizedBox(height: 30),

              // logo
              Icon(
                Icons.message,
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 30),

              // welcome back
              Text(
                "Welcome back!",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 16),
              ),

              const SizedBox(height: 25),

              // email
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: _emailController,
              ),

              const SizedBox(height: 20),

              // password
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: _passController,
              ),

              const SizedBox(height: 20),

              // login button
              MyButton(
                text: "LOGIN",
                onTap: login,
              ),

              const SizedBox(height: 20),
              // register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Register now!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
