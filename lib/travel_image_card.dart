import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:parallax_effect/glassmorpishm.dart';
import 'package:parallax_effect/locations.dart';
import 'package:parallax_effect/parallax_delegate.dart';
import 'package:parallax_effect/style/app_fonts.dart';

class TravelImageCard extends StatefulWidget {
  final Location location;
  final bool isSelected;
  const TravelImageCard(
      {super.key, required this.location, required this.isSelected});

  @override
  State<TravelImageCard> createState() => _TravelImageCardState();
}

class _TravelImageCardState extends State<TravelImageCard> {
  final GlobalKey _imageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: widget.isSelected
          ? const EdgeInsets.symmetric(vertical: 8, horizontal: 4)
          : const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Flow(
              delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey: _imageKey,
              ),
              children: [
                CachedNetworkImage(
                  key: _imageKey,
                  imageUrl: widget.location.imageUrl, fit: BoxFit.cover,)
              ],
            ),
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: GlassMorphism(
                start: 0.5,
                end: 0.7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.location.name,
                        style: blackBoldTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(widget.location.place, style: blackSemiBoldTextStyle,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
