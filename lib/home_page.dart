import 'package:flutter/material.dart';
import 'package:parallax_effect/list_of_travel_widget.dart';
import 'package:parallax_effect/style/app_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1567515004624-219c11d31f2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Hello, ",
                            style: greyBoldTextStyle,
                          ),
                          Text(
                            "Amar",
                            style: blackBoldTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "From Dream to Destination",
                          style: blackSemiBoldTextStyle.copyWith(fontSize: 22),
                        ),
                        TextSpan(
                            text: "\nRoamWise ",
                            style: blackBoldTextStyle.copyWith(
                                color: Colors.blue, fontSize: 24)),
                        TextSpan(
                          text: "Your Travel Inspiration",
                          style: blackSemiBoldTextStyle.copyWith(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ListOfTravelWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shadowColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text(
                      "Explore",
                      style: whiteSemiBoldTextStyle,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
