import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wqsm/features/login/reset_password.dart';

import '../../common/design_guide/dimensions.dart';
import '../../common/design_guide/styles.dart';
import '../../stores/user_auth_store.dart';
import '../home_screen/live_data/live_data.dart';
import '../sign_up/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthStore authStore = AuthStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                  "lib/assets/images/wqsm_splash.png",
                ),
                height: Dimensions.getHeight(113),
                width: Dimensions.getWidth(117),
              ),
              SizedBox(
                height: Dimensions.getHeight(20),
              ),
              Text(
                "WQSM: An IoT - Enable Water Quality ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sans-serif",
                    fontSize: Dimensions.getHeight(16),
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              Text(
                " Monitoring System",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sans-serif",
                    fontSize: Dimensions.getHeight(16),
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              SizedBox(
                height: Dimensions.getHeight(20),
              ),
              TextFormField(
                controller: authStore.nameController,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  authStore.nameController.value = value as TextEditingValue;
                },
                decoration: InputDecoration(
                    hintText: 'Username',
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
              SizedBox(
                height: Dimensions.getHeight(40),
              ),
              GestureDetector(
                onTap: () {
                  authStore.setEmail(authStore.nameController.text);

                  authStore.signIn(context);
                  Get.to(() => const LiveData());
                },
                child: Container(
                  height: Dimensions.getHeight(45),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.blueAccent)),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: Dimensions.getHeight(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.getHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const SignUp();
                      }));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Sans-serif",
                        fontSize: 16,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const PassWordReset()),
                    child: const Text("Forgot password",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sans-serif",
                          fontSize: 16,
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
