import 'package:travel_app/core/utils/resources/resources.dart';

class LocationDto {
  final String name;
  final String address;
  final String img;

  LocationDto({required this.name, required this.address, required this.img});

  static List<LocationDto> models = [
        LocationDto(
            name: "Apple River Park Square",
            address: "710 West main Avenue Spoken, WA 99201",
            img: Images.location1),
        LocationDto(
            name: "Apple Lenox Square",
            address: "3393 Peachtree Road NE Atlanta, GA 30326",
            img: Images.location2),
        LocationDto(
            name: "Apple Town Square",
            address: "6671 Las Vegas Blvd SouthLas Vegas, NV 89119",
            img: Images.location3),
        LocationDto(
            name: "Apple Birkdale Village",
            address: "8805 Townley Rd Huntersville, NC 28078",
            img: Images.location4),
        LocationDto(
            name: "Apple Bridge Street",
            address: "2701 Ming Avenue Bakersfield, CA 93304",
            img: Images.location5),
        LocationDto(
            name: "Apple Valley Plaza",
            address: "710 West main Avenue Spoken, WA 99201",
            img: Images.location6),
        LocationDto(
            name: "Apple La Cantera",
            address: "15900 La Cantera Parkway San Antonio, TX78256",
            img: Images.location7),
        LocationDto(
            name: "Apple Danbury Fair Mall",
            address: "Seven Backus Avenue Danbury, CT 06810",
            img: Images.location8),
        LocationDto(
            name: "Apple Milenia",
            address: "4200 Conroy Road Orlando, FL 32839",
            img: Images.location9),
      ];
}
