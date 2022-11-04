import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui_flutter/core/theme/app_color.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/get_started.png",
                    ),
                    fit: BoxFit.fill)),
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.25,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.8),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
              ),
            ),
          ),
           Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        'Discover Best\nPlace To Vacation',
                      style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w600,color: AppColor.black),
                      textAlign: TextAlign.center,

                    ),
                    Text(
                      'Travel around the word just a tap\nand enjoy your Holyday',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.black),
                      textAlign: TextAlign.center,

                    ),
                    SizedBox(
                      height: 56,
                      width: size.width,
                      child: ElevatedButton(
                          onPressed: (){
                          },
                          child: const Text('Get Started'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),

                          )
                        ),
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already Have an Account ? ',
                              style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.primarySwatch)
                            ),
                            TextSpan(
                                text: 'SignIn ',
                                style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: AppColor.blackGrey)
                            )
                          ]
                        )
                    )

                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

