import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/all_fastest_foods_screen.dart';
import 'package:foodly/views/home/all_nearby_restaurants.dart';
import 'package:foodly/views/home/recommendations_screen.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/food_list.dart';
import 'package:foodly/views/home/widgets/nearby_restaurat_list.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
        body: SafeArea(
            child: CustomContainer(
                contentContainer: Column(
          children: [
            const CategoryList(),
            Heading(
              text: 'Nearby Restaurants',
              onTap: () {
                Get.to(
                  () => const AllNearbyRestaurants(),
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            const NearbyRestaurants(),
            Heading(
              text: 'Try Something New',
              onTap: () {
                Get.to(
                  () => const RecommendationsScreen(),
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            const FoodsList(),
            Heading(
              text: 'Food Closer to you',
              onTap: () {
                Get.to(
                  () => const AllFastestFoodsScreen(),
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            const FoodsList(),
          ],
        ))));
  }
}
