import 'package:chat_app/custom_widgets/elevated_btn.dart';
import 'package:chat_app/custom_widgets/textfields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                      Icon(Icons.chat, size: 50,),
                     Text("Chat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextFields(
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  preIcon: Icons.email,
                  controller: emailController,
                  isVisible: false,
                  inputAction: TextInputAction.next,onTextChange: (value){},
                ),
                const SizedBox(height: 20,),
                CustomTextFields(
                  hint: 'Password',
                  inputType: TextInputType.text,
                  preIcon: Icons.lock,
                  controller: passwordController,
                  isVisible: false,
                  inputAction: TextInputAction.next, onTextChange: (value ) {  },
                ),
                const SizedBox(height: 20,),
                CustomButton(text: 'SignUp', onPressed: (){})

              ],
            ),
          ),
        ),
      ),
    );
  }
}
