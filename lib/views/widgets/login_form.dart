import 'package:carte/controllers/auth_controller.dart';
import 'package:carte/views/widgets/carte_button.dart';
import 'package:flutter/material.dart';
import 'package:carte/views/widgets/input_field.dart';
import 'package:provider/provider.dart';

class InputEditingController extends TextEditingController {
  String? errorText;
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _remember = false;

  InputEditingController emailController = InputEditingController();
  InputEditingController passwordController = InputEditingController();

  void toggleRemember(_) => setState(() {
        _remember = !_remember;
      });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, value, child) => Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
          color: Theme.of(context).cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              spacing: 30,
              children: [
                Text(
                  'Log Into Account',
                  style: TextStyle(
                    color: Theme.of(context).hintColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InputField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                InputField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
              ],
            ),

            // remember password
            Transform.translate(
              offset: Offset(-10, -5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      value: _remember,
                      onChanged: toggleRemember,
                    ),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).hintColor,
                    ),
                  )
                ],
              ),
            ),
            Column(
              spacing: 16,
              children: [
                // login button
                CarteButton.expand(
                  onTap: () => value.handleLoginSubmit(
                    context,
                    emailController,
                    passwordController,
                  ),
                  label: 'Log In',
                ),

                // ----- or -----
                Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Container(
                        height: 0.5,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: Theme.of(context).hintColor,
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 0.5,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  ],
                ),

                // facebook button
                CarteButton.secondary(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(-10, 0),
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),

                // bottom text
                Text(
                  'Login with your social media account.',
                  style: TextStyle(
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
