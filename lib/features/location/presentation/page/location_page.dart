import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/resources/resources.dart';
import 'package:travel_app/features/location/data/location_dto.dart';
import 'package:travel_app/features/widgets/location_card.dart';
import 'package:travel_app/features/widgets/search_text_field.dart';


@RoutePage()
class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              children: [
                SearchTextField(
                  controller: TextEditingController(),
                  hintText: "Choose a country or region",
                ),
                const SizedBox(
                  height: 12.5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Images.location,
                      width: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Location",
                      style: AppFonts.s13w500,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Stores in United States",
                  style: AppFonts.s14w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 14,
                                crossAxisSpacing: 8),
                        itemCount: LocationDto.models.length,
                        itemBuilder: (_, index) {
                          return LocationCard(
                              name: LocationDto.models[index].name,
                              address: LocationDto.models[index].address,
                              img: LocationDto.models[index].img);
                        })),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Map and Directions",
                  style: AppFonts.s12w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address",
                          style: AppFonts.s10w500,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "3393 Peachtree Road NE Atlanta, GA 30326",
                          style: AppFonts.s7w500
                              .copyWith(color: AppColors.greyBorderColor),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "(404) 926-3085",
                          style:
                              AppFonts.s7w500.copyWith(color: AppColors.blue),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How to get here",
                          style: AppFonts.s8w600,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "The Apple Store is located in the Lenox\nSquare mall in the northwest section on the\nupper level. Parking: Top level of the Lenox\nRd parking deck. Public Transit: MARTA Gold\nLine to Lenox station; Bus lines 25, 33, and 110.",
                          style: AppFonts.s7w500
                              .copyWith(color: AppColors.greyBorderColor),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 294,
                  height: 215,
                  child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: const CameraPosition(
                        target: LatLng(42.8746, 74.5698), zoom: 17),
                    onMapCreated: (controller) =>
                        _controller.complete(controller),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
