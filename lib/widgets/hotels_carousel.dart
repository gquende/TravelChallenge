import 'package:angotravel/models/destination_model.dart';
import 'package:angotravel/models/hotel_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Hoteis Exclusivos',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () {
                  print('Ver todos');
                },
                child: Text(
                  'Ver todos',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            //Para definir uma lista
            scrollDirection:
                Axis.horizontal, //Para fazer o Scrol de forma Horizontal
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              //Destination destination = destinations[index];
              Hotel hotel = hotels[index];

              return Container(
                margin: EdgeInsets.all(10.0),
                width: 240.0,
                child: Stack(
                  alignment:
                      Alignment.topCenter, //Para alinhar a pinha no centro
                  children: <Widget>[
                    Positioned(
                      bottom:
                          5.0, //Para posicionar a descricao abaixo da Imagem
                      child: Container(
                        width: 240.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 20.0,
                              ),

                              Text(
                                hotel.name,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              ),
                              SizedBox(
                                height: 1.2,
                              ), //Invoca o valor de uma variavel numa String
                              Text(hotel.address,
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                '\$${hotel.price} /night',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ]),
                      child: ClipRRect(
                        //Arredondar as bordas do Container
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 220.0,
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit
                              .cover, // para expandir conforme o tamnho do seu container
                        ),
                      ),
                      //Coloca os destino e pais sobreposto na Imagem
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
