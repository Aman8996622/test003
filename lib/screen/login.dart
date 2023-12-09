import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test003/screen/login_controller.dart';
import 'package:test003/widget/custom_text_field.dart';

class Login extends StatefulWidget {
  final LoginController loginController = Get.put(LoginController());

  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Create an account by filling thei following details",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: returnTextField(
                          hintText: "Enter Name",
                          labelText: "First name",
                          height: 60,
                          textEditingController:
                              widget.loginController.firstName,
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: returnTextField(
                          hintText: "Enter Last Name",
                          labelText: "Last Name",
                          // height: 50,
                          height: 60,
                          textEditingController:
                              widget.loginController.lastName,
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  child: returnTextField(
                    hintText: "Enter Email Address",
                    labelText: "Email Address",
                    // height: 50,
                    height: 60,
                    textEditingController: widget.loginController.emailAddress,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  child: returnTextField(
                    hintText: "Enter Phone Number",
                    labelText: "Phone Number",
                    // height: 50,
                    height: 60,
                    textEditingController: widget.loginController.phone,
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 5,
                  ),
                  child: CustomTextField(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                    hintText: "Enter Password ",
                    hintTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    labelText: "Password",
                    labelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    contoller: widget.loginController.password,
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 20,
                  ),
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 5,
                  ),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.grey)),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  alignment: Alignment.center,

                  child: CustomTextField(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                    hintText: "Enter Confirm Password ",
                    hintTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    labelText: "Confirm Password",
                    labelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    contoller: widget.loginController.confirmPassword,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await widget.loginController.nextButtonClicked(
                      context: context,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 40,
                    width: double.infinity,
                    color: Colors.blue.shade500,
                    child: const Center(
                      child: Text(
                        "Next Button",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget returnTextField({
    required String hintText,
    required String labelText,
    required double height,
    required TextEditingController textEditingController,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: TextField(
        controller: textEditingController,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontSize: 16, color: Colors.white),
            labelText: labelText,
            contentPadding: const EdgeInsets.only(top: 5, left: 5),
            labelStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            )),
      ),
    );
  }
}
