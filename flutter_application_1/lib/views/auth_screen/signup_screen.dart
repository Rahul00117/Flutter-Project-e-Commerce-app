import 'package:project_1/consts/consts.dart';
import 'package:project_1/consts/strings.dart';
import 'package:project_1/controllers/auth_controller.dart';
import 'package:project_1/views/home_screen/home.dart';
import 'package:project_1/views/widgets_common/applogo_wigets.dart';
import 'package:project_1/views/widgets_common/bg_wegets.dart';
import 'package:project_1/views/widgets_common/custom_textfield.dart';
import 'package:project_1/views/widgets_common/our_button.dart';

import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  // var controller = Get.put(AuthController());
  // var nameController = TextEditingController();
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  // var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWiget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextFild(
                    hint: nameHint,
                    title: name,
                    // controller: nameController,
                    isPass: false),
                customTextFild(
                    hint: emailHint,
                    title: email,
                    // controller: emailController,
                    isPass: false),
                customTextFild(
                  hint: passwordHint,
                  title: password,
                  // controller: passwordController,
                  isPass: true,
                ),
                customTextFild(
                    hint: passwordHint,
                    title: retypePassword,
                    // controller: passwordRetypeController,
                    isPass: true),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),

                Row(
                  children: [
                    Checkbox(
                      checkColor: whiteColor,
                      activeColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.heightBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the  ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: termAndConddition,
                            style: TextStyle(
                                fontFamily: regular, color: redColor)),
                        TextSpan(
                            text: "  & ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: privecyPolicy,
                            style:
                                TextStyle(fontFamily: regular, color: redColor))
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: isCheck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {
                          // if (isCheck != false) {
                          //   try {
                          //     await controller
                          //         .signupMethod(
                          //             context: context,
                          //             email: emailController.text,
                          //             password: passwordController.text)
                          //         .then((value) {
                          //       return controller.storeUserData(
                          //         email: emailController.text,
                          //         password: passwordController.text,
                          //         name: nameController.text,
                          //       );
                          //     }).then((value) {
                          //       VxToast.show(context, msg: loggedin);
                          //       Get.offAll(() => Home());
                          //     });
                          //   } catch (e) {
                          //     auth.signOut();
                          //     VxToast.show(context, msg: e.toString());
                          //   }
                          // }
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make().onTap(() {
                      Get.back();
                    })
                  ],
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
