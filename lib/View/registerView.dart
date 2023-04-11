
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubes_clo2_kelompok4/View/widgets/btnFormGlobal.dart';
import 'package:tubes_clo2_kelompok4/View/widgets/txtFormGlobal.dart';

import '../utils/globalColors.dart';
import 'loginView.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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
                    "Welcome,",
                    style: TextStyle(
                        color: GlobalColors.textMainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please create your account",
                    style: TextStyle(
                        color: GlobalColors.textColorBlck,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 18),
                  // Username input
                  TxtFormGlobal(
                    controller: userController,
                    placeHolder: 'Username',
                    textInputType: TextInputType.text,
                    obscure: false,
                  ),
                  const SizedBox(height: 18),
                  // Email input
                  TxtFormGlobal(
                    controller: emailController,
                    placeHolder: 'E-mail',
                    textInputType: TextInputType.emailAddress,
                    obscure: false,
                  ),
                  const SizedBox(height: 12),
                  TxtFormGlobal(
                    controller: passController,
                    placeHolder: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true,
                  ),
                  const SizedBox(height: 28),
                  const BtnFormGlobal(nameBtn: 'Sign Up'),
                  const SizedBox(height: 48),
                  const Text("Already a member ? "),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return LoginView();
                            },)
                        );
                      },
                      child: Text("Log In",
                          style: TextStyle(
                              color: GlobalColors.textMainColor, fontSize: 20))),
                    //Sementara ini di comment dulu karena memakai framework cli
                  // InkWell(
                  //     onTap: () => {Get.to(LoginView())},
                  //     child: Text("Log In",
                  //         style: TextStyle(
                  //             color: GlobalColors.textMainColor, fontSize: 20)))
                ],
              ),
            )),
      ),
    );
  }
}
