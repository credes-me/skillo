import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillo/themes.dart';
import 'package:skillo/uikit/ui_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 280,
            child: Container(
              color: UIColor.blackPure,
              padding: const EdgeInsets.all(30.0),
              child:  Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hey, Maddy",style: GoogleFonts.robotoMono(textStyle:AppThemes.headlineSmall())),
                          const SizedBox(height: 5),
                          Text("What's on your mood today?",style: GoogleFonts.robotoMono(textStyle:AppThemes.bodyMedium())),
                        ],
                      ),

                      const Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                          ),
                          CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/avatar.jpg')
                          )
                        ],
                      )

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
