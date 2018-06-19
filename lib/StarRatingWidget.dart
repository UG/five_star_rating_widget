import 'package:flutter/material.dart';

class StarRatingWidget extends StatefulWidget {
  @override
  StarRatingState createState() => new StarRatingState();
}

class StarRatingState extends State<StatefulWidget>{
  final int numberOfStar = 5;
  final Icon ratedStar = new Icon(Icons.star,color: Colors.orangeAccent,size: 30.0,);
  final Icon notRatedStar = new Icon(Icons.star_border,color: Colors.orangeAccent, size: 30.0,);
  int selectedScore = 0;

  List<Widget> starRate(){
    List<Widget> rateWidgets = [];
    for(int a =1; a < numberOfStar +1 ; a++) {
      rateWidgets.add(
        new IconButton(
          icon: a > selectedScore ? notRatedStar : ratedStar,
          onPressed: (){
            setState(() {
              this.selectedScore =a;
            });
          },
        ),
      );
    }
    return rateWidgets;
  }
  @override
  Widget build(BuildContext context) {
    return Row(children: starRate(),);
  }
}