import 'package:carte/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TweenAnimationBuilder(
                tween: Tween<double>(
                  begin: 200,
                  end: 0,
                ),
                duration: Duration(milliseconds: 400),
                builder: (context, value, _) => Transform.translate(
                  offset: Offset(0, value),
                  child: Center(
                    child: Icon(
                      Icons.local_grocery_store_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 480,
                end: 0,
              ),
              duration: Duration(milliseconds: 500),
              builder: (context, value, _) => Transform.translate(
                offset: Offset(0, value),
                child: LoginForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
