import 'package:flutter/material.dart';

import '../theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true; // Track if it's login or registration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isLogin
                ? [
                    DoDidDoneTheme.lightTheme.colorScheme.secondary, // Secondary color
                    DoDidDoneTheme.lightTheme.colorScheme.primary, // Primary color
                  ]
                : [
                    DoDidDoneTheme.lightTheme.colorScheme.primary, // Primary color
                    DoDidDoneTheme.lightTheme.colorScheme.secondary, // Secondary color
                  ],
            stops: const [0.1, 0.9], // Primary color takes 90% space
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              Text(
                isLogin ? 'Вход' : 'Регистрация',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),

              // Email Field
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Пароль',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Repeat Password Field (Only for Registration)
              if (!isLogin)
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Повторить пароль',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login/registration logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(isLogin ? 'Войти' : 'Зарегистрироваться'),
              ),
              const SizedBox(height: 20),

              // Switch to Login/Registration
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(
                  isLogin
                      ? 'У меня еще нет аккаунта'
                      : 'Уже есть аккаунт? Войти',
                  style: const TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
