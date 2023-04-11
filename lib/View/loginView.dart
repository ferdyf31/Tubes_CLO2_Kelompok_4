
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tubes_clo2_kelompok4/View/registerView.dart';
import 'package:tubes_clo2_kelompok4/View/widgets/btnFormGlobal.dart';
import 'package:tubes_clo2_kelompok4/View/widgets/txtFormGlobal.dart';

import '../utils/globalColors.dart';



class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              width: double.infinity,
              padding:
              const EdgeInsets.only(left: 40, top: 20, right: 40, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                          color: GlobalColors.textMainColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "Hi There!,",
                    style: TextStyle(
                        color: GlobalColors.textMainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please login with your account",
                    style: TextStyle(
                        color: GlobalColors.textColorBlck,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 18),
                  // Email input
                  TxtFormGlobal(
                    controller: userController,
                    placeHolder: 'Your Email',
                    textInputType: TextInputType.emailAddress,
                    obscure: false,
                  ),
                  const SizedBox(height: 12),
                  TxtFormGlobal(
                    controller: passController,
                    placeHolder: 'Your Password',
                    textInputType: TextInputType.text,
                    obscure: true,
                  ),
                  const SizedBox(height: 28),
                  const BtnFormGlobal(nameBtn: 'Log In'),
                  const SizedBox(height: 48),
                  const Text("Don't have an acoount ? "),
                  InkWell(
                      onTap: () => {Get.to(RegisterView())},
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: GlobalColors.textMainColor, fontSize: 20)))
                ],
              ),
            )),
      ),
    );
  }
}
