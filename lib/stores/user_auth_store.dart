import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'user_auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  @observable
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @observable
  bool isLoggedIn = false;

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController phoneController = TextEditingController();

  @action
  void setLoggedIn(bool value) {
    isLoggedIn = value;
  }

  @action
  void setEmail(String value) {
    emailController.text = value;
  }

  @action
  void setPassword(String value) {
    passwordController.text = value;
  }

  @action
  void setName(String value) {
    nameController.text = value;
  }

  @action
  void setPhone(String value) {
    phoneController.text = value;
  }

  @action
  void clearControllers() {
    emailController.clear();
    passwordController.clear();
    nameController.clear();
    phoneController.clear();
  }

  @action
  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }

  @action
  void clearAll() {
    clearControllers();
    disposeControllers();
  }

  @action
  Future signIn(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      setLoggedIn(true);
      if (kDebugMode) {
        print('Signed in');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    navKey.currentState!.popUntil((route) => route.isFirst);
  }

  @action
  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      await FirebaseAuth.instance.currentUser!
          .updateDisplayName(nameController.text);
      setLoggedIn(true);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @action
  Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      setLoggedIn(false);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
