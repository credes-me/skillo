import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillo/themes.dart';
import 'package:skillo/uikit/ui_colors.dart';
import "package:skillo/widgets/card.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 280,
          child: Container(
            color: UIColor.blackPure,
            padding: const EdgeInsets.all(30.0),
            child: Column(
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
                        Text("Hey, Maddy",
                            style: GoogleFonts.robotoMono(
                                textStyle: AppThemes.headlineSmall())),
                        const SizedBox(height: 5),
                        Text("What's on your mood today?",
                            style: GoogleFonts.robotoMono(
                                textStyle: AppThemes.bodyMedium())),
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
                            backgroundImage: AssetImage('assets/avatar.jpg'))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Added By Akhil Start
                _earningCoinsIcon(context),

                // Added By Akhil Start
              ],
            ),
          ),
        ),
        _explore(context),
        const SizedBox(height: 40),
        _upcomingMeetings(context),
        _cardParent(context),
      ],
    ));
  }
}

Widget _earningCoinsIcon(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            child: Column(
               mainAxisAlignment:MainAxisAlignment.end,
              //  crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/earnings.png')),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Earnings',
                          style: GoogleFonts.robotoMono(
                              textStyle: AppThemes.headlineSmall()))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('\$ 20k',
                      style: GoogleFonts.robotoMono(
                          textStyle: AppThemes.bodyMedium())),
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/coins.png')),
                  const SizedBox(width: 10),
                  Text('Coins',
                      style: GoogleFonts.robotoMono(
                          textStyle: AppThemes.headlineSmall())),
                ],
              ),
              Text('^ 15k',
                  style: GoogleFonts.robotoMono(
                      textStyle: AppThemes.bodyMedium())),
            ],
          ),
        ],
      ),
      Image.asset('assets/information.png', width: 25),
      // const Icon(Icons.info,color: Colors.white,size: 35,),
      // Text('Icon',style: GoogleFonts.robotoMono(textStyle:AppThemes.headlineSmall())),
    ],
  );
}

Widget _explore(context) {
  return SizedBox(
    child: Container(
      width: 325,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff04E824),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/explore.png',
            width: 80,
          ),
          // SizedBox(width: 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text('Dive into a new skill ->'),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _upcomingMeetings(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Text(
        'Upcoming Meetings',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(color: Colors.black),
            ),
          ),
        ),
        child: const Text('view all'),
      ),
    ],
  );
}

Widget _cardParent(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CustomCard(),
      Text('hiii'),
    ],
  );
}
