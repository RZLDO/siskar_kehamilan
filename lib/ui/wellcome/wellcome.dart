import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kehamilan/ui/login/login.dart';
import 'package:kehamilan/utils/app_color.dart';
import 'package:kehamilan/utils/button.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://kehamilansehat.com/wp-content/uploads/2021/02/Kehamilan-Sehat-Bekasi-Banner-min.png",
                        ))),
              )),
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: AppColor.mainColor.withOpacity(0.5),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtonExtended(
                        text: 'Login as Admin',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        width: MediaQuery.of(context).size.width * 0.8),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("OR",
                        style: GoogleFonts.poppins(
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButtonExtended(
                        text: 'Diagnosa',
                        onTap: () {},
                        width: MediaQuery.of(context).size.width * 0.8)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
