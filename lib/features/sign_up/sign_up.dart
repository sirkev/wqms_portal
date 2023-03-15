import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wqsm/features/login/login_screen.dart';

import '../../common/design_guide/styles.dart';
import '../../stores/user_auth_store.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthStore authStore = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage(
                    "lib/assets/images/wqsm_splash.png",
                  ),
                  height: 113,
                  width: 117,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "WQSM: An IoT - Enable Water Quality ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Sans-serif",
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                Text(
                  " Monitoring System",
                  style: Styles.inter400ItalicBlack16,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authStore.emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: Styles.inter400ItalicBlack16),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authStore.nameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: Styles.inter400ItalicBlack16),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authStore.phoneController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: Styles.inter400ItalicBlack16),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: authStore.passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: Styles.hintTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 45,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.blueAccent)),
                  child: Center(
                    child: Text('SIGN UP',
                        style: Styles.inter400ItalicBlack16.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const MainPage());
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sans-serif",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
