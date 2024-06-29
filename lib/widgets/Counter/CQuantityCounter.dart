
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.inc,
    required this.dec,
    required this.count,
  });
  final Function inc;
  final Function dec;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:16 ,bottom: 18),
      
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 126, 84, 198),),
      // height: 160,
      width: 130,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
        children: [
          
          Container(
            padding: EdgeInsets.all(4),
            height: 36,
            width: 36,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ColorConstants.kpurple),
            child: IconButton(onPressed: ()=>dec(), icon: Icon(Iconsax.minus, size: 20,),color: Colors.white,alignment: Alignment.center,padding: EdgeInsets.all(0),)),
            // const SizedBox(width: 18,),
            Text(count.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
            // const SizedBox(width: 18,),
          Container(
            // padding: EdgeInsets.all(4),
            height: 36,
            width: 36,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ColorConstants.kpurple),
            child: IconButton(onPressed: ()=>inc(), icon: Icon(Icons.add),iconSize: 25,padding: EdgeInsets.all(0),alignment: Alignment.center,color: Colors.white,))
        ],
      ),
    );
  }
}