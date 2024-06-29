import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sweetu/utils/constants.dart';
import 'package:sweetu/widgets/Bottom%20and%20top%20bars/AppBar.dart';
import 'package:sweetu/widgets/Buttons/Button.dart';
import 'package:sweetu/widgets/Text/SectionHeader.dart';
import '../../widgets/CircularImage/CurveBorderImage.dart';
import '../../widgets/Counter/CQuantityCounter.dart';
import '../../widgets/Product Price and Status/PriceAndStatus.dart';
import '../../widgets/RatingWidget/RattingBar.dart';
import 'package:readmore/readmore.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool toggleWhishList = false;
  int count=0;
  void incCount(){
  setState(() {
    count++;
    });
}
  void decCount(){
  setState(() {
    count--;
    });
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        color: ColorConstants.kpurple,
        showbackArrow: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  toggleWhishList = !toggleWhishList;
                });
              },
              icon: toggleWhishList
                  ? Icon(
                      Iconsax.heart5,
                      color: Colors.red,
                    )
                  : Icon(
                      Iconsax.heart,
                      color: Colors.white,
                    ),
              highlightColor: ColorConstants.kpurple)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 16,
              ),

              Stack(
                children: [
                  Center(
                    child: SizedBox(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image(
                              image: AssetImage("assets/images/catfood.png")),
                        )),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 20,
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context)
                          .size
                          .width, // Ensure it takes full width
                      child: ListView.separated(
                        shrinkWrap:
                            false, // Let ListView handle its own constraints
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 6,
                        separatorBuilder: (_, __) => SizedBox(width: 12),
                        itemBuilder: (context, index) => CCurvedBorderImage(
                          imageSource: "assets/images/catfood.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Divider(
                thickness: 2,
                color: Colors.black26,
              ),
              //price brand stock and Title
              const SizedBox(
                height: 8,
              ),
               Row(
                
                children: [
                Expanded(
                  flex: 6,
                  child: Text.rich(TextSpan(
                      text: "Brand: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.kpurple,
                          fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Wishkas",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400))
                      ])),
                ),
                const Expanded(
                  flex: 4,
                  child: CRattingBar(
                    rating: 4.5,
                  ),
                ),
              ]),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Whiskas Adult (+1 year) Dry Cat food , Ocean Fish Flavour, 3 kg pack",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("2k+ bought last month "),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
              ),

              // brand ratiing

             
              // pricing
              PriceAndStatusWidget(
                originalPrice: "360",
                discountedPrice: "324",
                discount: "10% ",
                inStock: true,
              ),
              const Divider(
                thickness: 2,
                color: Colors.black26,
              ),
              const SectionHeader(
                title: "About the product",
                showActionButton: false,
              ),
              const SizedBox(
                height: 12,
              ),
              ReadMoreText(
                colorClickableText: Colors.blue,
                trimLines: 2,
                trimMode: TrimMode.Line,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
                "Whiskars Cat Food offers a premium blend of high-quality ingredients specially formulated to meet the nutritional needs of cats at all life stages.Packed with real meat, essential vitamins, and minerals, each serving provides a balanced diet to support your cat's overall health, including a shiny coat, strong muscles, and a robust immune system.",
              ),
              SizedBox(height: 8,),
              const Divider(
                thickness: 2,
                color: Colors.black26,
              ),
              const SectionHeader(title: "Check Out",showActionButton: false,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Quantity", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),),
                  Counter(
                    count: count,
                    inc: incCount,
                    dec: decCount,
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Button(message: "Check Out", onPressed: (){}),
              const SizedBox(height: 16,),
              Button(message: "Add to Cart", onPressed: (){}),
              //-- attributes

              //Check out button
              //Description
              //Reviews
            ],
          ),
        ),
      ),
    );
  }
}


// List<InlineSpan> _processText(String text) {
//   List<InlineSpan> spans = [];
//   // Example processing: finding superscript notation and creating WidgetSpan
//   // This is a simple example and should be adjusted to fit your needs
//   text.splitMapJoin(
//     RegExp(r'\^[^\s]+'), // Example regex to find superscript notation like "^2"
//     onMatch: (m) {
//       spans.add(WidgetSpan(
//         child: Transform.translate(
//           offset: const Offset(0, -7), // Adjust the offset for superscript
//           child: Text(
//             m.group(0)!.substring(1), // Remove the '^' symbol
//             style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ));
//       return '';
//     },
//     onNonMatch: (n) {
//       spans.add(TextSpan(text: n));
//       return '';
//     },
//   );

//   return spans;
// }
