import 'package:flutter/material.dart';
import 'package:kehamilan/ui/admin/dashboard/dashboard_admin.dart';
import 'package:kehamilan/utils/app_color.dart';
import 'package:kehamilan/utils/button.dart';
import 'package:kehamilan/utils/custom_text.dart';
import 'package:kehamilan/utils/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.mainColor,
            )),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/image/logo_kehamilan.png",
              height: 150,
            ),
            const SizedBox(
              height: 24,
            ),
            Form(
                key: _key,
                child: Column(
                  children: [
                    CustomTextField(
                        hintText: "username",
                        controller: usernameController,
                        validator: Validator.basicValidate,
                        obsecure: false),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                        hintText: "password",
                        controller: passwordController,
                        validator: Validator.validatePassword,
                        obsecure: true)
                  ],
                )),
            const SizedBox(
              height: 24,
            ),
            CustomButtonExtended(
              text: "LOGIN",
              onTap: () {
                if (_key.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardAdmin()));
                }
              },
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
