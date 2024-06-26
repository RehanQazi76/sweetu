import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sweetu/screens/Settings/Profile.dart';
import 'package:sweetu/widgets/AppBar.dart';
import '../../widgets/CircularImage/circularImage.dart';
import '../../widgets/CustomBottom/CustomBottomCurve.dart';
import '../../widgets/ListTiles/SettingMenuTile.dart';
import '../../widgets/ListTiles/UserInfoTile.dart';
import '../../widgets/SectionHeader.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //heading
            CustomBottomCurve(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                CAppBar( 
                  title: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 25),),
                  color: Colors.transparent,
                  
                 ),
                SizedBox(height: 32,),
                UserInfoTile(userName: "Rehan Qazi", userEmail: "rehanqazi03@gmail.com", onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                }, imageUrl: "",imageString: "assets/images/profileimg.png",
                ),
                 SizedBox(height: 50,),
             ]),
            ),
            //body
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SectionHeader(title: "Accounts",showActionButton: false,),
                  CSettingMenuTile(icon: Iconsax.safe_home4,title: "My Address", subTitle: "set shopping delivery address",),
                  CSettingMenuTile(icon: Iconsax.wallet,title: "Payment Methods", subTitle: "add",trailing: Icon(Iconsax.add),onTap: (){},),
                  CSettingMenuTile (icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  CSettingMenuTile (icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders'),
                  CSettingMenuTile (icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                  CSettingMenuTile (icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                  CSettingMenuTile (icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  const SizedBox(height: 32,),
                  ///// App Settings
                  SectionHeader (title: 'App Settings', showActionButton: false),
                  SizedBox(height: 16),
                  CSettingMenuTile (icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  CSettingMenuTile(icon: Iconsax.location,title: 'Geolocation',subTitle: 'Set recommendation based on location',trailing: Switch (value: true, onChanged: (value) {}),),
                  CSettingMenuTile(icon: Iconsax.image,title: 'HD Image Quality',subTitle: 'Set image quality to be seen',trailing: Switch (value: false, onChanged: (value) {}),), 

                ],
              ),
            )


          ],
        ),
      ),
    );
  }
  
  
}


