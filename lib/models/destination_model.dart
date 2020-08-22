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
      imageUrl: 'assets/images/elefante.jpg',
      name: 'Fauna Incrivel',
      startTimes: ['9:00', '11:00'],
      rating: 5,
      price: 30,
      type: 'Turismo'),
  Activity(
      imageUrl: 'assets/images/luanda.jpg',
      name: 'Restaurantes',
      startTimes: ['11:00', '12:00'],
      rating: 4,
      price: 210,
      type: 'Alimentacao'),
  Activity(
      imageUrl: 'assets/images/surf.jpg',
      name: 'Surfs',
      startTimes: ['14:00', '15:00'],
      rating: 3,
      price: 125,
      type: 'Lazer'),
  Activity(
      imageUrl: 'assets/images/jirafas.jpg',
      name: 'Fauna',
      startTimes: ['8:00', '10:00'],
      rating: 3,
      price: 125,
      type: 'Turismo'),
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
      city: 'Fendas',
      country: 'Huila',
      description: 'Impressiona-se com uma cave que ja',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/baia.jpg',
      city: 'Baia Farta',
      country: 'Benguela',
      description: 'Ao Alto mar azul, venha divertir-se ao ',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/deserto.jpg',
      city: 'Deserto do Namibe',
      country: 'Namibe',
      description: 'Uma vista magnifica a planta rara,.',
      activities: activities),
];
