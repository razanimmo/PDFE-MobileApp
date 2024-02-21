import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfe/Screen/Public_Screen/login/login_controller.dart';

import '../../../utills/appConfig.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: AppConfig.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 40, right: 40),
                child: Image.asset(
                  "assets/images/pdflogin.png",
                  width: 112,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "login".tr,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 35,
                ),
                child: TextField(
                  controller:controller.emailController ,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(174, 11, 0, 0.08),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromRGBO(174, 11, 0, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromRGBO(174, 11, 0, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "email".tr,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromRGBO(174, 11, 0, 1),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  controller: controller.passwordController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(174, 11, 0, 0.08),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(174, 11, 0, 1),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(174, 11, 0, 1))),

                      // fillColor: Colors.red,

                      hintText: "password".tr,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromRGBO(174, 11, 0, 1),
                      ),
                      suffixIcon: Icon(Icons.visibility_sharp)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,
                left: 5,right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "remember_me".tr,

                          // style:

                          style: TextStyle(
                              color: Color.fromRGBO(49, 56, 66, 1),
                              fontSize: 13.65,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      "forgot_password".tr,

                      // style:

                      style: TextStyle(
                          color: Color.fromRGBO(174, 11, 0, 1),
                          fontSize: 13.65,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.9,
                height: 50,
                margin: EdgeInsets.only(
                  top: 50,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Color.fromRGBO(174, 11, 0, 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    "login".tr,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                width: Get.width * 0.9,
                height: 50,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromRGBO(174, 0, 0, 1),
                    )),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                      // elevation:  2,

                      // shadowColor: Color.fromRGBO(174, 11, 0, 1),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "guest_login".tr,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(174, 11, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                  height: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 10),
                  child: RichText(
                    text: TextSpan(
                      text: "create_newaccount?".tr,
                      style: TextStyle(
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.blueGrey,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "sing_up".tr,
                            style: TextStyle(
                              fontFamily: "Lexend",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(174, 11, 0, 1),
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
