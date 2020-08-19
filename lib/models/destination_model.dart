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

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/maiombe.jpg',
      city: 'Maiombe',
      country: 'Cabinda',
      description: 'Visita a segunda maior floresta do mundo.',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/quedas.jpg',
      city: 'Quedas de Kalandula',
      country: 'Malange',
      description: 'Mergulhe numa das 7 maravilhas de Angola',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tundavala.jpg',
      city: 'Fendas Tundavala',
      country: 'Huila',
      description: 'Impressiona-se com uma cave que ja mais imaginou',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/baia.jpg',
      city: 'Baia Farta',
      country: 'Benguela',
      description: 'Ao Alto mar azul, venha divertir-se ao bom som.',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/deserto.jpg',
      city: 'Deserto do Namibe',
      country: 'Namibe',
      description: 'Uma vista magnifica a planta rara, na companhia de Orix.',
      activities: activities),
];
