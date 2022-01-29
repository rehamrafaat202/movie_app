import 'package:flutter/material.dart';
import 'package:movie/screens/auth/sigin_up_screen.dart';
import 'package:movie/screens/home/home_layout_screen.dart';
import 'package:movie/widgets/change_account.dart';
import 'package:movie/widgets/container_button.dart';
import 'package:movie/widgets/default_form_field.dart';
import 'package:movie/widgets/social_accounts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text("Welcome to Movietime!",
                      style: TextStyle(
                        fontSize: 28,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Your personal guide to the world of cinema",
                      style: TextStyle(fontSize: 15, color: Colors.black38)),
                  const SizedBox(
                    height: 100,
                  ),
                  defaultFormText(
                    control: emailController,
                    type: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Email can't be Empty";
                      }
                      return null;
                    },
                    label: "Email",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultFormText(
                    control: passwordController,
                    type: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password is to short !";
                      }
                      return null;
                    },
                    label: "password",
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Your Password ?",
                            style: TextStyle(color: Color(0xff77c8b2)),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ContainerButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeLayoutScreen()));
                          // If the form is valid, display a Snackbar.

                        }
                      },
                      title: "SIGN IN"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("or continue with :",
                      style: TextStyle(fontSize: 18, color: Colors.black38)),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialAccounts(),
                  const SizedBox(
                    height: 20,
                  ),
                  ChangeAccount(
                    paragraph: "Don't have account yet ?",
                    type: "SIGN UP",
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (cntext) => const SignUpScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
