import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;

  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/stmarksbasilica.jpg',
      name: 'St. Mark Baselica',
      startTimes: ['9:00 am', '11:00 am'],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: 'assets/images/stmarksbasilica.jpg',
      name: 'St. Mark Baselica',
      startTimes: ['11:00 pm', '11:00 pm'],
      rating: 4,
      price: 210),
  Activity(
      imageUrl: 'assets/images/stmarksbasilica.jpg',
      name: 'St. Mark Baselica',
      startTimes: ['11:00 pm', '11:00 pm'],
      rating: 3,
      price: 125),
];

List<Destination> destinations= [
Destination(imageUrl: 'assets/images/venice.jpg',city: 'Venice', country: 'Italy',description: 'Visit Venice is a beautiful city looking for someone.',activities: activities)
];