import 'package:flutter/material.dart';
import 'package:travel_place/models/destination_model.dart';

class DestinationCarosel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations', 
                style: TextStyle(
                  fontSize: 22.0, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing:1.5,
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("See All");
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder :(BuildContext context, int index){
              Destination destination = destinations[index];
              return Container(
                margin: EdgeInsets.all(10),
                width: 210.0,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      width: 200.0,                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${destination.activities.length} Activities',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                            ),
                            Text(
                              destination.description,
                              style: TextStyle(
                                color: Colors.grey,
                                
                              ),
                            ),
                             
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } 
          ),
        ),
      ],
    );
  }
}