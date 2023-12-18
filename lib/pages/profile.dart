import 'dart:io';
import 'dart:math' show cos, sqrt, asin;
import 'package:flutter/material.dart';
import 'package:picknpass/home_page.dart';
import 'package:picknpass/pages/models/user.model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_button.dart';
import 'home.dart';
import 'package:geolocator/geolocator.dart';

class Profile extends StatefulWidget {
  const Profile(this.username, {Key? key, required this.imagePath})
      : super(key: key);
  final String username;
  final String imagePath;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String currentLocation = 'Fetching location...';
  @override
  void initState() {
    super.initState();
    fetchLocation();
  }

  final List<Store> stores = [
    Store(name: 'Thapar Patiala Store', latitude: 30.3564, longitude: 76.3647),
    Store(name: 'Chandigarh Store', latitude: 30.7333, longitude: 76.7794),
    Store(name: 'Delhi Store', latitude: 28.7041, longitude: 77.1025),
  ];

  double calculateDistance(double startLatitude, double startLongitude,
      double endLatitude, double endLongitude) {
    const double p = 0.017453292519943295; // Math.PI / 180
    final double a = 0.5 -
        cos((endLatitude - startLatitude) * p) / 2 +
        cos(startLatitude * p) *
            cos(endLatitude * p) *
            (1 - cos((endLongitude - startLongitude) * p)) /
            2;
    return 12742 * asin(sqrt(a)); // 2 * R; R = 6371 km
  }

  Store findNearestStore(Position currentPosition, List<Store> stores) {
    double minDistance = double.infinity;
    Store nearestStore = stores[0];

    for (var store in stores) {
      double distance = calculateDistance(currentPosition.latitude,
          currentPosition.longitude, store.latitude, store.longitude);

      if (distance < minDistance) {
        minDistance = distance;
        nearestStore = store;
      }
    }

    return nearestStore;
  }

  Future<void> fetchLocation() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      // You can replace this with your preferred method to get the city name from the coordinates.
      String cityName = findNearestStore(position, stores).name;
      print(cityName);
      setState(() {
        currentLocation = cityName;
      });
    } catch (e) {
      setState(() {
        currentLocation = 'Error fetching location';
        print(e.toString());
      });
    }
  }

  final String githubURL =
      "https://github.com/MCarlomagno/FaceRecognitionAuth/tree/master";

  void _launchURL() async => await canLaunch(githubURL)
      ? await launch(githubURL)
      : throw 'Could not launch $githubURL';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(widget.imagePath)),
                      ),
                    ),
                    margin: const EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    'Hi ${widget.username}!',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Icon(Icons.location_on,
                  size: 50.0, color: Colors.blue), // Location icon
              SizedBox(height: 16.0),
              Text(
                'Your current store location is:',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                currentLocation,
                style: TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEFFC1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.warning_amber_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '''You are successfully logged in as a verified customer of PickNPass. To continue to our shop, press continue!''',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    const Divider(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 1,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CONTINUE',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                text: "LOG OUT",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                color: const Color(0xFFFF6161),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
