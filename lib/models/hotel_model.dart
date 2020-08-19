class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/hotel0.jpg',
      name: 'Hotel Quende',
      address: '404 Great St',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Hotel Geraldo',
      address: '404 Great St',
      price: 75),
  Hotel(
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Hotel Nilsia',
      address: '404 Great St',
      price: 275),
];
