import 'package:dots_indicator/dots_indicator.dart';
import 'package:final_project_we/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:final_project_we/utils/assets.dart';

class PageControllerView extends StatefulWidget {
  const PageControllerView({super.key});

  @override
  _PageControllerViewState createState() => _PageControllerViewState();
}

class _PageControllerViewState extends State<PageControllerView> {
  int _currentPage = 0; // Track the current page index

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(360, 780), // Use your design dimensions
      minTextAdapt: true,
      splitScreenMode: true,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 360.w,
        height: 780.w,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index; // Update the current page index
                });
              },
              controller: PageController(
                initialPage: 0,
                keepPage: false,
                viewportFraction: 1,
              ),
              pageSnapping: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      //fit: BoxFit.fill,
                      image: AssetImage(AssetsData.logo3),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.logo6,),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.logo5),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        bottom: 90,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => HomeView(),));
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                            side: WidgetStateProperty.all(const BorderSide(color: Colors.white)),
                          ),
                          child: const Text('Get Started'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 66,
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPage,
                decorator: const DotsDecorator(
                  activeColor: Colors.green,
                  color: Colors.grey,
                  size: Size(10.0, 10.0),
                  activeSize: Size(12.0, 12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}