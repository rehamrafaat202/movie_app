import 'package:flutter/material.dart';
import 'package:movie/screens/auth/login_screen.dart';
import 'package:movie/screens/home/home_layout_screen.dart';
import 'package:movie/widgets/change_account.dart';
import 'package:movie/widgets/container_button.dart';
import 'package:movie/widgets/default_form_field.dart';
import 'package:movie/widgets/social_accounts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmedpasswordController = TextEditingController();

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
                    height: 50,
                  ),
                  defaultFormText(
                    control: nameController,
                    type: TextInputType.name,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Name can't be Empty";
                      }
                      return null;
                    },
                    label: "Name",
                  ),
                  const SizedBox(
                    height: 30,
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
                  const SizedBox(
                    height: 30,
                  ),
                  defaultFormText(
                    control: confirmedpasswordController,
                    type: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password is to short !";
                      } else if (value != passwordController.text) {
                        return "the password must be identical";
                      }
                      return null;
                    },
                    label: "Confirmed password",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ContainerButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeLayoutScreen()));
                        }
                      },
                      title: "SIGN UP"),
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
                    type: "SIGN IN",
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (cntext) => const LoginScreen()),
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
