import 'package:angotravel/screens/brincadeira.dart';
import 'package:angotravel/widgets/destination_carousel.dart';
import 'package:angotravel/widgets/hotels_carousel.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    //Lista de icones que sera apresentado no top
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });

/* 
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Brincadeira(),
            ));
        
        */

        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(
                    0xFFE7EBEE), //Define a cora com base os cliques que ira receber
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFBAC1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding:
                EdgeInsets.symmetric(vertical: 30.0), //Pesquisar sobre isso
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, right: 120.0),
                child: Text(
                  'O que voce está a procura?',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icons
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildIcon(map.key))
                      .toList()),
              SizedBox(
                height: 20.0,
              ),
              DestinationCarousel(),
              SizedBox(
                height: 20.0,
              ),
              HotelCarousel(),
              SizedBox(
                height: 20.0,
              ),
              DestinationCarousel(),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 2, //Para aonde a selecao ficara quando o App iniciar
          animationDuration:
              Duration(milliseconds: 200), //Para definir a duracao
          color: Colors.white,
          height: 70,
          animationCurve: Curves.bounceIn,

          backgroundColor: Colors.blue,
          buttonBackgroundColor: Colors.white,
          items: <Widget>[
            //Define o que serao como icones
            Icon(
              Icons.verified_user,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.exit_to_app,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.black,
            )
          ],
          onTap: (index) {
            debugPrint("Current Index is $index");
          },
        ));
  }
}
