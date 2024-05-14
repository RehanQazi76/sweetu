import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sweetu/utils/constants.dart';

class CProductCardVertical extends StatefulWidget {
  const CProductCardVertical({super.key});

  @override
  State<CProductCardVertical> createState() => _CProductCardVerticalState();
}

class _CProductCardVerticalState extends State<CProductCardVertical> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                ),
                child: Image.asset(
                  "assets/images/catfood.png",
                  height: 160,
                  width: double.infinity,
                  // opacity: [],
                ),
              ),
              // sale tag
              Positioned(
                top: 12,
                left: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(10), left: Radius.circular(10)),
                  ),
                  child: const Text("27%"),
                ),
              ),
              //add to whishlist button/icon
    
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorConstants.kpurple,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.heart5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 8,
            ),
            // details
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  const Text(
                    "Wiskas Adult (+1 year) Dry Cay food ,  Ocean Fish Flavour, 1.2 kg pack",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$25.55",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        decoration: BoxDecoration(
                           color: ColorConstants.kpurple,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                          //
                        ),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Center(
                            child: IconButton(
                              splashRadius: null,
                              onPressed: (){}, icon: const Icon(Iconsax.add, 
                            color: Colors.white,
                            ),),
                          )
                          ,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
