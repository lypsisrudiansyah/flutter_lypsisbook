import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    List<Map<String, dynamic>> carouselItems = [
      {
        "title": "Lypsisbook Demo 1",
        "description":
            "This innovative app seamlessly combines an extensive library of books, an intuitive dashboard for personalized reading insights",
        "image": "https://img.freepik.com/free-vector/boy-student-sitting-stack-books-with-laptop-flat-icon-illustration_1284-64037.jpg",
      },
      {
        "title": "Lypsisbook Demo 2",
        "description":
            "Dashboard revolutionizes your reading journey by offering a unique blend of books, a dynamic dashboard preview, and a comprehensive product list.",
        "image": "https://img.freepik.com/free-vector/learning-concept-illustration_114360-6186.jpg",
      },
      {
        "title": "Lypsisbook Demo 3",
        "description":
            "Immerse yourself in a vast collection of books, get a sneak peek through our interactive dashboard preview, and explore handpicked reading accessories in our product list.",
        "image": "https://img.freepik.com/free-vector/students-watching-webinar-computer-studying-online_74855-15522.jpg",
      },
      // Add more objects as needed
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Builder(builder: (context) {
                  /* List images = [
                    "https://img.freepik.com/free-vector/boy-student-sitting-stack-books-with-laptop-flat-icon-illustration_1284-64037.jpg",
                    "https://img.freepik.com/free-vector/learning-concept-illustration_114360-6186.jpg",
                    "https://img.freepik.com/free-vector/students-watching-webinar-computer-studying-online_74855-15522.jpg",
                    // "https://img.freepik.com/free-vector/focused-tiny-people-reading-books_74855-5836.jpg",
                    // "https://img.freepik.com/free-vector/students-watching-webinar-computer-studying-online_74855-15522.jpg"
                  ]; */

                  return SizedBox(
                    // color: Colors.red,
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: Column(
                      children: [
                        Expanded(
                          child: CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: 500,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                controller.setState(() {});
                              },
                            ),
                            items: carouselItems.map((item) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                          decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                item['image']!,
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        item['title']!,
                                        style: const TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        item['description']!,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: carouselItems.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => controller.carouselController.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                                        .withOpacity(controller.currentIndex == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                LypsisButtonFW(
                  text: "Next",
                  // controller.carouselController
                  onPressed: () {
                    var theCurrent = controller.currentIndex;
                    print("the current : $theCurrent");
                    if (controller.currentIndex < (carouselItems.length - 1)) {
                      controller.setState(() {
                        theCurrent++;
                        controller.carouselController.jumpToPage(theCurrent);
                      });
                      // controller.carouselController.jumpToPage(theCurrent++);
                    } else {
                      Get.to(const LoginView());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
