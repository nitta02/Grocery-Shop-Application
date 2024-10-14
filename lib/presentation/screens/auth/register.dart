import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/utils/color.dart';
import 'package:grocery_shop_app/presentation/screens/auth/signIn.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmpassController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          backgroundColor1,
          backgroundColor2,
          backgroundColor3,
        ])),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.045,
              ),
              const Text(
                'WELCOME',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                'Please Enter the details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: textColor2,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              // TextFormField(
              //   controller: nameController,
              //   decoration: InputDecoration(
              //       fillColor: Colors.white,
              //       filled: true,
              //       hintText: 'Name',
              //       contentPadding: const EdgeInsets.symmetric(
              //         vertical: 20,
              //         horizontal: 25,
              //       ),
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide.none,
              //         borderRadius: BorderRadius.circular(10),
              //       )),
              // ),
              // SizedBox(
              //   height: size.height * 0.015,
              // ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    suffixIcon: const Icon(CupertinoIcons.eye_slash),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: confirmpassController,
                decoration: InputDecoration(
                    suffixIcon: const Icon(CupertinoIcons.eye_slash),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    // auth
                    //     .createUserWithEmailAndPassword(
                    //         email: emailController.text.toString(),
                    //         password: passwordController.text.toString())
                    //     .then((value) {
                    //  Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => const HomeScreen(),
                    //         ));
                    // });
                  }
                },
                child: Container(
                  height: size.height * 0.065,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Text(
                    'Sing up with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor2,
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.075,
                    width: size.width * 0.15,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/images/google.png',
                      height: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a member?',
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor1,
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ));
                    },
                    child: const Text('Sign In',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
