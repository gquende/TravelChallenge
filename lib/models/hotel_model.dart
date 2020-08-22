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
      address: 'Rua Geraldo',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Hotel Geraldo',
      address: 'Destrito de Benguela',
      price: 75),
  Hotel(
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Hotel Nilsia',
      address: 'Rua Irmao Evaristo',
      price: 275),
  Hotel(
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Hotel Geraldo',
      address: 'Destrito de Benguela',
      price: 75),
  Hotel(
      imageUrl: 'assets/images/hotel0.jpg',
      name: 'Hotel Quende',
      address: 'Rua Geraldo',
      price: 175),
];
