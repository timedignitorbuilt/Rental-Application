/*
import 'package:flutter/material.dart';

import 'Common_File/SizeConfig.dart';
import 'Common_File/common_color.dart';

class Estimation extends StatefulWidget {
  const Estimation({super.key});

  @override
  State<Estimation> createState() => _EstimationState();
}

class _EstimationState extends State<Estimation> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          height: MediaQuery.of(context).size.height *1.2,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                top: _startAnimation ? 0 : -screenHeight * 0.4,
                left: 0,
                right: 0,
                child: Container(

                   height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffF3F5FF),
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80.0),
                    ),
                  ),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 34),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back,
                                    color: Colors.black, size: 23)),
                            Text(
                              "ESTIMATION",
                              style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.0,
                                fontFamily: "okra_Medium",
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 4.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            Image(image: AssetImage('assets/images/more.png'),height:13,color: Colors.transparent,)

                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                SizeConfig.screenHeight * 0.015,top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.1), // Shadow color
                                    blurRadius: 5, // Shadow blur
                                    offset: Offset(0,
                                        2), // Shadow position (x, y)
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 23.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                    radius: 17.0,
                                    backgroundColor:
                                    Colors.transparent,
                                    backgroundImage: AssetImage(
                                        'assets/images/profiless.png')
                                  // Profile image
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          // Name
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Listing ID:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "okra_Medium",
                                        fontSize: 14,
                                        letterSpacing: 0.9,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  Text("  AB2345",
                                      style: TextStyle(
                                        color: Color(0xff3684F0),
                                        fontFamily: "okra_Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                              Text(
                                  "Hi, John Doe",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto_Regular",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding:  EdgeInsets.only(right: 5),
                        child: Padding(
                          padding:  EdgeInsets.all(14.0),
                          child:  Container(
                            width:250,
                            child: Text(
                              "Customize your product effortlessly and preview it instantly before confirming your choice",
                              style: TextStyle(
                                color: CommonColor.grayText,
                                fontFamily: "Montserrat-Medium",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 150),
                child:   AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  left: _startAnimation ? 0 : -MediaQuery.of(context).size.width,
                  child: Container(

                    height: MediaQuery.of(context).size.height * 0.2,

                    width: MediaQuery.of(context).size.width *0.25,

                    child: Image(image: AssetImage('assets/images/estimation.png'),height: 100),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOut,
                bottom: _startAnimation ? 0 : -screenHeight * 0.5,
                left: 0,
                right: 0,
                child:Container(
                  height: MediaQuery.of(context).size.height * 0.5,

                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffF3F5FF),
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),child:Container(
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}*/

import 'dart:ui';

import 'package:flutter/material.dart';

import 'Common_File/SizeConfig.dart';
import 'Common_File/common_color.dart';
import 'ProductConfirmation.dart';

class Estimation extends StatefulWidget {
  const Estimation({super.key});

  @override
  State<Estimation> createState() => _EstimationState();
}

class _EstimationState extends State<Estimation> with TickerProviderStateMixin {
  bool _startAnimation = false;
  late AnimationController _controllerzoom;

  @override
  void dispose() {
    _controllerzoom.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controllerzoom = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      lowerBound: 1.0,
      upperBound: 1.07,
    )..repeat(reverse: true);
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _startAnimation = true;
      });
    });
  }

  int currentIndex = 0;

  final List<String> Price = [
    "11,400",
    "500",
    "345",
    "5000",
  ];
  final List<String> Labels = [
    "/Per Hour",
    "/Per Day",
    "/Per Week",
    "/Per Month"
  ];
  bool isDropdown32Days = false;
  bool isDropdown54Days = false;

  bool isSelected32Days = false;
  bool isSelected54Days = false;

  String selectedOption = "";

  final List<String> images = [
    'https://img.freepik.com/free-psd/shoes-sale-social-media-post-square-banner-template-design_505751-2862.jpg?uid=R160153524&ga=GA1.1.2033069531.1724674585&semt=ais_hybrid',
    'https://img.freepik.com/premium-vector/black-friday-sale-social-media-post-banner-home-appliance-product-instagram-post-banner-design_755018-930.jpg?uid=R160153524&ga=GA1.1.2033069531.1724674585&semt=ais_hybrid',
    'https://img.freepik.com/free-vector/drink-ad-nature-pear-juice_52683-34246.jpg?uid=R160153524&ga=GA1.1.2033069531.1724674585&semt=ais_hybrid',
    'https://img.freepik.com/premium-psd/ironing-machine-brand-product-social-media-banner_154386-123.jpg?uid=R160153524&ga=GA1.1.2033069531.1724674585&semt=ais_hybrid',
    'https://img.freepik.com/free-vector/sports-drink-advertisement_52683-430.jpg?uid=R160153524&ga=GA1.1.2033069531.1724674585&semt=ais_hybrid',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ProductBigView(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width),
        ],
      ),
    );
  }

  Widget ProductBigView(double parentWidth, double parentHeight) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1.06,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              top: _startAnimation ? 0 : -screenHeight * 0.4,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/estione.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back,
                                    color: Colors.black, size: 23)),
                            /* Text(
                            "ESTIMATION",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontFamily: "okra_Medium",
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Image(image: AssetImage('assets/images/more.png'),height:13,color: Colors.transparent)*/
                          ],
                        ),
                      ),

                      /*    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left:
                              SizeConfig.screenHeight * 0.015,top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                      0.1), // Shadow color
                                  blurRadius: 5, // Shadow blur
                                  offset: Offset(0,
                                      2), // Shadow position (x, y)
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 23.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                  radius: 17.0,
                                  backgroundColor:
                                  Colors.transparent,
                                  backgroundImage: AssetImage(
                                      'assets/images/profiless.png')
                                // Profile image
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        // Name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Listing ID:",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "okra_Medium",
                                      fontSize: 14,
                                      letterSpacing: 0.9,
                                      fontWeight: FontWeight.w600,
                                    )),
                                Text("  AB2345",
                                    style: TextStyle(
                                      color: Color(0xff3684F0),
                                      fontFamily: "okra_Regular",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                            Text(
                                "Hi, John Doe",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto_Regular",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                          ],
                        ),
                      ],
                    ),*/

                      /* Padding(
                      padding:  EdgeInsets.only(right: 2),
                      child: Padding(
                        padding:  EdgeInsets.all(14.0),
                        child:  Container(
                          width:250,
                          child: Text(
                            "Customize your product effortlessly and preview it instantly before confirming your choice",
                            style: TextStyle(
                              color: CommonColor.grayText,
                              fontFamily: "Montserrat-Medium",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),*/
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOut,
              bottom: _startAnimation ? 0 : -screenHeight * 0.5,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.69,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/glass.png'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 1.23,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white
                                  .withOpacity(0.2), // Semi-transparent white
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "UPGRADE TO PREMIUM",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "okra_Bold",
                                      color: Color(0xff1A1698),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/images/checkmark.png'),
                                            height: 20),
                                        SizedBox(width: 10),
                                        Text(
                                          "Unlimated AI Generation",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "okra_Regular",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/images/checkmark.png'),
                                            height: 20),
                                        SizedBox(width: 10),
                                        Text(
                                          "Unlimated Pro Sketches",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "okra_Regular",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/images/checkmark.png'),
                                            height: 20),
                                        SizedBox(width: 10),
                                        Text(
                                          "Ads Free !",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "okra_Regular",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  AnimatedBuilder(
                                    animation: _controllerzoom,
                                    builder: (context, child) {
                                      return Transform.scale(
                                        scale: _controllerzoom.value,
                                        child: child,
                                      );
                                    },
                                    child: Container(
                                      width: 353,
                                      height: SizeConfig.screenHeight * 0.32,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xffFE7F64)
                                                    .withOpacity(0.5),
                                                blurRadius: 9,
                                                spreadRadius: 0,
                                                offset: Offset(0, 1)),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Column(children: [
                                        SizedBox(height: 30),
                                        buildOption("32 Days", "48 INR"),
                                        SizedBox(height: 15),
                                        buildOption("54 Days", "78 INR"),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: Container(
                                            height: SizeConfig.screenHeight *
                                                0.0005,
                                            color: CommonColor.SearchBar,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Total Estimation",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "okra_Medium",
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10, right: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "54 Days",
                                                style: TextStyle(
                                                  fontFamily: "Roboto_Regular",
                                                  color: Color(0xff7D7B7B),
                                                  fontSize: SizeConfig
                                                          .blockSizeHorizontal *
                                                      3.8,
                                                ),
                                              ),
                                              Text(
                                                "\$78 INR",
                                                style: TextStyle(
                                                  fontFamily:
                                                      "Montserrat-BoldItalic",
                                                  color: Colors.black,
                                                  fontSize: SizeConfig
                                                          .blockSizeHorizontal *
                                                      3.8,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption(String option, String price) {
    bool isSelected = selectedOption == option;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option; // Update the selected option
        });
        /* showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Selected Option"),
              content: Text("You selected: $option"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );*/

        showDialog(
          context: context,
          builder: (
            BuildContext context,
          ) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Color(0xfff3e8ff),
              title: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text("Selected Plan",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "okra_Medium",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Container(
                      width: 300,
                      padding: EdgeInsets.all(3),
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin:
                          Alignment.topCenter,
                          end: Alignment.topLeft,
                          colors: [Colors.blue, Colors.white],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(child: Text('Press')),
                      )

                      /* child: Text(
                      " Are You Sure you want to Logout?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat-Medium",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),*/
                      ),
                  /*
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text("Logout",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "okra_Medium",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/logthree.png'),
                        height: SizeConfig.screenHeight * 0.07,
                      ),
                    ),
                  ),
                  Container(
                    height:
                    SizeConfig.screenHeight * 0.03, // Adjust height as needed

                    child: Text(
                      " Are You Sure you want to Logout?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat-Medium",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {

                           */ /* Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                                  (route) => false,
                            );*/ /*
                          //}
                        },
                        child: Padding(
                          padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
                          child: Container(
                            width: SizeConfig.screenWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFEBA69),
                                  Color(0xffFE7F64),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    height: 2,
                                    fontSize: SizeConfig.blockSizeHorizontal * 4.3,
                                    fontFamily: 'Roboto_Medium',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
                          child: Container(
                            width: SizeConfig.screenWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.white,

                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFEBA69),
                                  Color(0xffFE7F64),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                    height: 2,
                                    fontSize: SizeConfig.blockSizeHorizontal * 4.3,
                                    fontFamily: 'Roboto_Medium',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            );
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF3F5FF),
            border: Border.all(
                color: isSelected
                    ? Color(0xff8d4fd6)
                    : Colors.black.withOpacity(0.3),
                width: 0.4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected
                              ? Color(0xff8d4fd6)
                              : Colors.black, // Outer circle color
                          width: 1,
                        ),
                      ),
                      child: isSelected
                          ? Center(
                              child: Container(
                                width: 10, // Inner circle size
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected
                                      ? Color(0xff8d4fd6)
                                      : Colors.black,
                                ),
                              ),
                            )
                          : null,
                    ),
                    SizedBox(width: 10),
                    Text(
                      option,
                      style: TextStyle(
                        fontFamily: "Montserrat-BoldItalic",
                        color: isSelected ? Color(0xff8d4fd6) : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        price,
                        style: TextStyle(
                          fontFamily: "Montserrat-BoldItalic",
                          color: isSelected ? Color(0xff8d4fd6) : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}