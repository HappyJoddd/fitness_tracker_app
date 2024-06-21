
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              _buildPageIndicator(
                  text: "Meet your coach,\n Start your Journey",
                  imageAsset: 'assets/images/onborading1.jpg'),
              _buildPageIndicator(
                  text: "CREATE A WORKOUT PLAN\n TO STAY FIT",
                  imageAsset: 'assets/images/onborading2.jpg'),
              _buildPageIndicator(
                  text: "ACTIONS IS THE \nKEY TO ALL SUCCESS ",
                  imageAsset: 'assets/images/onborading3.jpg'),
            ],
          ),
          isLastPage
              ? const SizedBox.shrink()
              : Positioned(
                  top: size.height * 0.05,
                  right: size.width * 0.05,
                  child: TextButton(
                    onPressed: () {
                      controller.animateToPage(2,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
          !isLastPage
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: size.height * 0.15,
                  right: size.width * 0.25,
                  left: size.width * 0.25,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(208, 253, 62, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/gender');
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'KanitSB'),
                      ),
                    ),
                  ),
                ),
          Positioned(
              bottom: size.height * 0.1,
              left: size.width * 0.4,
              right: size.width * 0.4,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey,
                  activeDotColor: const Color.fromRGBO(208, 253, 62, 1),
                ),
              ))
        ],
      ),
    );
  }

  Widget _buildPageIndicator(
      {required String text, required String imageAsset}) {
    var size = MediaQuery.of(context).size;
    return Stack(children: [
      Image.asset(
        imageAsset,
        height: size.height * 0.6,
        width: size.width / 1,
        fit: BoxFit.cover,
      ),
      Positioned(
        bottom: size.height * 0.1,
        child: Container(
          height: size.height * 0.4,
          width: size.width,
          child: Center(
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                  fontSize: 25, fontFamily: 'Kanit', color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
