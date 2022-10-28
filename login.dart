import 'package:flutter/material.dart';
import 'package:rahyapp/screens/home_screen.dart';

import 'package:rahyapp/screens/reset_password.dart';
import 'package:rahyapp/theme.dart';
import 'package:rahyapp/widgets/login_form.dart';
import 'package:rahyapp/widgets/login_option.dart';
import 'package:rahyapp/widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/images/Rahy-logo.png',
                fit: BoxFit.cover,
                scale: 2.0,
              ),
              Row(
                children: [
                  Text(
                    'Welcome To Rahy Sales  Login',
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 7, 4),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: kDefaultPadding,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreem()));
                    },
                    child: PrimaryButton(
                      buttonText: 'Log In',
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
