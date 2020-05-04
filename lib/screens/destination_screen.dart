import 'package:flutter/material.dart';
import 'package:travel_place/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

 
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,  
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26, 
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0, 
                    ),
                  ],
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(30.0),
                 child: Image(
                   image: AssetImage(
                     widget.destination.imageUrl
                    ),
                    fit: BoxFit.cover,
                  ),
               ),
              ),
            ],
          )
        ],
      ),
    );
  }
}