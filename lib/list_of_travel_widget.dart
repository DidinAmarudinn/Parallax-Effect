import 'package:flutter/material.dart';
import 'package:parallax_effect/locations.dart';
import 'package:parallax_effect/travel_image_card.dart';

class ListOfTravelWidget extends StatefulWidget {
  const ListOfTravelWidget({super.key});

  @override
  State<ListOfTravelWidget> createState() => _ListOfTravelWidgetState();
}

class _ListOfTravelWidgetState extends State<ListOfTravelWidget> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.75,);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return TravelImageCard(
          location: locations[index],
          isSelected: index == _selectedIndex,
        );
      },
      onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
