/*
import 'package:anything/Common_File/SizeConfig.dart';
import 'package:anything/Common_File/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'bottomNavigationBar.dart';
import 'Common_File/common_color.dart';
import 'dummy.dart';

class Zoom extends StatefulWidget {
  const Zoom({super.key});

  @override
  State<Zoom> createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  final _searchFocus = FocusNode();
  final searchController = TextEditingController();
  int currentIndex = 0;
  int _currentIndex = 0;
  int _counter = 0;

  final List<String> images = [
    "https://img.freepik.com/free-vector/gradient-car-rental-twitch-background_23-2149238538.jpg?w=1380&t=st=1724674607~exp=1724675207~hmac=0ab319f9d9411c32c9d26508151d51f62139e048ac598796c8463dac3ef0aad7"
        'https://img.freepik.com/free-vector/real-estate-landing-page_23-2148686374.jpg?w=1380&t=st=1724741972~exp=1724742572~hmac=e21195893cb55e204d9618c983abd7d4d1dc18402402af3dbe0420bd08d6ad33',
    "https://img.freepik.com/free-vector/hand-drawn-real-estate-poster-template_23-2149845735.jpg?w=740&t=st=1724742124~exp=1724742724~hmac=3920ca483a7e7dc65a3006016da9687799d3d72e35d5a70af985ce681bbdfc49"
        'https://images.pexels.com/photos/3757226/pexels-photo-3757226.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/13065690/pexels-photo-13065690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/372810/pexels-photo-372810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/4489702/pexels-photo-4489702.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          getAddMainHeadingLayout(
              SizeConfig.screenHeight, SizeConfig.screenWidth),
          HomeSearchBar(SizeConfig.screenHeight, SizeConfig.screenWidth),
          sliderData(SizeConfig.screenHeight, SizeConfig.screenWidth),
          AddPostButton(SizeConfig.screenHeight, SizeConfig.screenWidth),
          PopularCategories(SizeConfig.screenHeight, SizeConfig.screenWidth),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.68, top: 190),
                child: Image(
                  image: AssetImage('assets/images/home.png'),
                  height: SizeConfig.screenHeight * 0.220,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenWidth * 0.55),
                child: Image(
                  image: AssetImage('assets/images/homecircle.png'),
                  height: SizeConfig.screenHeight * 0.150,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenWidth * 0.71),
                child: Image(
                  image: AssetImage('assets/images/homecircle.png'),
                  height: SizeConfig.screenHeight * 0.150,
                ),
              ),

              // RegisterButton(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          height: 60,

          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.8, 0.9],
              colors: [Color(0xffC291EE), Color(0xff8E55C1)],
            ),
          ),
          child: FloatingActionButton(
            shape: CircleBorder(),
            heroTag: GestureDetector(
              onTap: () {},
            ),
            */
/*Color(0xffC291EE)*//*

            onPressed: _incrementCounter,

            backgroundColor: Colors.transparent,
            // tooltip: 'Increment',
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: BottomNavyBar(
          showInactiveTitle: true,
          selectedIndex: _currentIndex,
          showElevation: true,
          itemPadding: EdgeInsets.symmetric(horizontal: 0),
          itemCornerRadius: 24,
          iconSize: 20,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(

                icon: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(Icons.home, color: Colors.black,size: 17),
                ),
                title: Text('Home',style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                    fontFamily: 'Roboto_Medium',
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
                activeBackgroundColor: Colors.white,
                activeTextColor: Colors.black87,

                textAlign: TextAlign.center),
            BottomNavyBarItem(
              icon: Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(Icons.search, color: Colors.black,size: 17,),
              ),
              title: Text('Search',style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                  fontFamily: 'Roboto_Medium',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              activeTextColor: Colors.black87,
              activeBackgroundColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Padding(
                padding: EdgeInsets.all(6.0),
                child: Image(
                  image: AssetImage('assets/images/like.png'),
                  color: Colors.black,
                  height: 18,
                ),
              ),
              title: Text(
                'Favorite',style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                  fontFamily: 'Roboto_Medium',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),
              ),
              activeTextColor: Colors.black,
              textAlign: TextAlign.center,
              activeBackgroundColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(Icons.settings, color: Colors.black,size: 17),
              ),
              title: Text('Settings',),
              activeTextColor: Colors.black87,
              activeBackgroundColor: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget getAddMainHeadingLayout(double parentHeight, double parentWidth) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          onDoubleTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: parentWidth * .02),
            child: Padding(
              padding: EdgeInsets.only(top: parentHeight * 0.04),
              child: Image(
                image: AssetImage('assets/images/sidebar.png'),
                height: parentHeight * 0.045,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: parentHeight * 0.05),
              child: Text(
                "    Hi,Aaysha",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 3.8,
                    fontFamily: 'Roboto_Medium',
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.only(left: parentWidth * 0.03),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/location.png'),
                    height: parentHeight * 0.017,
                  ),
                  Text(
                    "  Park Street, Kolkata, 700021",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                        fontFamily: 'Poppins_Medium',
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: parentWidth * .29),
          child: Padding(
            padding: EdgeInsets.only(top: parentHeight * 0.04),
            child: Image(
              image: AssetImage('assets/images/notification.png'),
              height: parentHeight * 0.025,
            ),
          ),
        ),
      ],
    );
  }

  Widget HomeSearchBar(double parentHeight, double parentWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * .05,
              top: SizeConfig.screenHeight * 0.015),
          child: Container(
            //  height: SizeConfig.screenHeight * .065,
            width: parentWidth - (SizeConfig.screenWidth * .23),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: parentWidth * 0.04),
                    child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset: Offset(0, 1),
                              color: Colors.black12)
                        ]),
                        child: TextFormField(
                            keyboardType: TextInputType.text,
                            autocorrect: true,
                            controller: searchController,
                            focusNode: _searchFocus,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                    image:
                                        AssetImage("assets/images/search.png"),
                                    height: SizeConfig.screenWidth * 0.07,
                                  )),
                              hintText: "Search Product/Service",
                              hintStyle: TextStyle(
                                fontFamily: "Roboto_Regular",
                                fontSize: SizeConfig.blockSizeHorizontal * 3.6,
                                color: CommonColor.SearchBar,
                                fontWeight: FontWeight.w300,
                              ),
                              contentPadding: EdgeInsets.only(
                                left: parentWidth * 0.04,
                              ),
                              */
/*    hintStyle: TextStyle(
                                fontFamily: "Roboto_Regular",
                                color: Color(0xff7D7B7B),
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                // color: CommonColor.DIVIDER_COLOR,
                              ),*//*

                              fillColor: Color(0xfffbf3f3),
                              hoverColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black12, width: 1),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ),
       */
/* GestureDetector(
          onTap: () {
            *//*
*/
/* _controller.nextPage(
          duration:  Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );*//*
*/
/*
          },
          child: Padding(
            padding: EdgeInsets.only(
                top: parentHeight * 0.01, right: parentWidth * 0.02),
            child: PhysicalShape(
              color: Color(0xff61A5A9),
              shadowColor: Colors.grey.shade300,
              elevation: 10,
              clipper: ShapeBorderClipper(shape: CircleBorder()),
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 9,
                          spreadRadius: 1,
                          offset: Offset(4, 2)),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.9],
                      colors: [
                        Color(0xff31D1FC),
                        Color(0xffA5E9FD),
                      ],
                    ),
                    *//*
*/
/*   border: Border.all(
                        width: 1, color: CommonColor.APP_BAR_COLOR),*//*
*/
/* //Border.
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/filter.png'),
                    height: parentHeight * 0.1,
                  )),
            ),
          ),
        )*//*

      ],
    );
  }

  Widget sliderData(double parentHeight, double parentWidth) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              initialPage: 1,
              height: MediaQuery.of(context).size.height * .20,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              autoPlay: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            itemBuilder: (BuildContext context, int itemIndex, int index1) {
              final img = images.isNotEmpty
                  ? NetworkImage(images[index1])
                  : NetworkImage("");

              return Container(
                  margin: EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height * 0.17,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: const Offset(4, 4),
                      ),
                      BoxShadow(
                        color: Colors.grey.shade50,
                        offset: const Offset(-2, 0),
                      ),
                      BoxShadow(
                        color: Colors.grey.shade50,
                        offset: const Offset(1, 0),
                      )
                    ],
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ));
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < images.length; i++)
              currentIndex == i
                  ? Container(
                      width: 25,
                      height: 7,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff6a83da),
                              Color(0xff665365B7),
                            ]),
                      ),
                    )
                  : Container(
                      width: 7,
                      height: 7,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff7F9ED4),
                                Color(0xff999999),
                              ]),
                          shape: BoxShape.circle),
                    )
          ],
        ),
      ],
    );
  }

  Widget AddPostButton(double parentHeight, double parentWidth) {
    return Padding(
      padding:
          EdgeInsets.only(left: parentWidth * 0.67, right: parentWidth * 0.05),
      child: Container(
        //alignment: Alignment.,
        height: parentHeight * 0.033,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: CommonColor.Blue),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
            child: Text(
          "Create Post +",
          style: TextStyle(
            fontFamily: "Roboto_Medium",
            fontSize: SizeConfig.blockSizeHorizontal * 3.2,
            color: Color(0xff3684F0),
            fontWeight: FontWeight.w300,
          ),
        )),
      ),
    );
  }

  Widget PopularCategories(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(top: parentHeight * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "   Popular Categories",
                style: TextStyle(
                  fontFamily: "Montserrat-Medium",
                  fontSize: SizeConfig.blockSizeHorizontal * 4.1,
                  color: CommonColor.TextBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth * 0.3, top: parentWidth * 0.0),
                child: Container(
                  height: parentHeight * 0.025,
                  width: parentWidth * 0.2,
                  decoration: BoxDecoration(
                      color: CommonColor.ViewAll,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("View All",
                          style: TextStyle(
                            fontFamily: "Montserrat-Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            color: CommonColor.TextBlack,
                            fontWeight: FontWeight.w400,
                          )),
                      Image(
                        image: AssetImage('assets/images/arrow.png'),
                        height: 20,
                        width: 15,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: parentHeight * 0.009,
                left: parentWidth * 0.04,
                right: parentWidth * 0.04),
            child: Column(
              children: [
                CommonWidget(
                  text: "Electronics",
                  texttwo: 'Mobiles & Tab',
                  textthree: 'Furniture',
                  textfour: 'Events',
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          Center(
            child: Container(
              height: parentHeight * 0.0005,
              width: parentWidth * 0.95,
              color: CommonColor.SearchBar,
            ),
          )
        ],
      ),
    );
  }



}
*/
