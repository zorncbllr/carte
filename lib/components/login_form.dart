import 'package:flutter/material.dart';
import 'package:carte/utils/input_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
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
                  hintText: 'Email',
                ),
                InputField(
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
                      value: false,
                      onChanged: (value) {},
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
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
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

                // boxes
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 0.5,
                      color: Theme.of(context).hintColor,
                    ),
                    borderRadius: BorderRadius.circular(1000),
                  ),
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
