import 'package:flutter/material.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:mewnu/views/contact_futuristic/contact_zone_1.dart';
import 'package:mewnu/views/contact_futuristic/contact_zone_2.dart';

class ContactFuturisticPage extends StatelessWidget {
  final SwiperController swiperController = SwiperController();
  final List<Widget> navigationPages = [
    ContactFuturisticZone1(),
    // ContactFuturisticZone2()
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      controller: swiperController,
      itemCount: navigationPages.length,
      scrollDirection: Axis.vertical,
      loop: false,
      itemBuilder: (BuildContext context, int index) {
        return navigationPages[index];
      },
    );
  }
}