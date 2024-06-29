
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class PriceAndStatusWidget extends StatelessWidget {
  

  const PriceAndStatusWidget({
    super.key, required this.discount, required this.discountedPrice, required this.originalPrice, required this.inStock,
  });
  final String discount;
  final String discountedPrice;
  final String originalPrice;
  final bool inStock;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text.rich(TextSpan(children: <InlineSpan>[
              TextSpan(
                text: "-$discount ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
             
              WidgetSpan(
                child: Transform.translate(
                  offset:
                      const Offset(0, -8), // Adjust this value as needed
                  child: Text(
                    "₹",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.kpurple),
                  ),
                ),
              ),
              TextSpan(
                text: discountedPrice,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.kpurple),
              ),
            ])),
            subtitle: Text.rich(TextSpan(
                style: TextStyle(fontSize: 15),
                children: <InlineSpan>[
                  TextSpan(
                    text: "M.R.P:",
                  ),
                  TextSpan(
                    text: "₹",
                  ),
                  TextSpan(
                    text: originalPrice,
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 2),
                  ),
                ])),
          ),
        ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("Status"),
            subtitle: Text(inStock? "In Stock":"Out Off Stock", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.black),),
          ),
        )
      ],
    );
  }
}
