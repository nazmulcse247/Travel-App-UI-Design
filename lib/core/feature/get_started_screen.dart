import 'package:flutter/material.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/get_started.png",
                    ),
                    fit: BoxFit.fill
                )
            ),

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
        ],

      ),
    );
  }


