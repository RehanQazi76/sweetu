
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CRattingBar extends StatelessWidget {
  const CRattingBar({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Text(rating.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
        RatingBar.builder(
         initialRating: rating,
           minRating: 1,
           direction: Axis.horizontal,
           allowHalfRating: true,
           itemCount: 5,
           itemSize: 20,
           itemPadding: const EdgeInsets.symmetric(horizontal: 2),
           itemBuilder: (context, _) => Icon(
             Icons.star,
             color: Colors.amber,
           ),onRatingUpdate: (_rating){}),
      ],
    );
  }
}
