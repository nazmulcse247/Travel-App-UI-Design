import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui_flutter/core/component/popular_destination_widget.dart';
import 'package:travel_app_ui_flutter/core/theme/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/profile_1.jpeg')),
                            shape: BoxShape.circle,
                            border: Border.all()),
                      ),
                      const SizedBox(width: 8,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text('Mr.Nazmul Hoque',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                          const SizedBox(height: 8,),
                          Text('Where do you want to go ?',style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      FloatingActionButton.small(
                          heroTag: 'notification',
                          backgroundColor: AppColor.blackGrey,
                          elevation: 0,
                          onPressed: (){},
                          child: const Icon(Icons.notifications,size: 25,))

                    ],
                  ),

                ),
                Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16)),
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration:  const InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search),
                      border: InputBorder.none,
                      hintText: 'Search Hotel , Bali , Etc...',),
                    onChanged: (value){
                      debugPrint(value);
                    },
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: (size.width - 70) / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.primarySwatch),
                        alignment: Alignment.center,
                        child: Text('Beach',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(width: 8,),
                      Container(
                        height: 48,
                        width: (size.width - 70 ) / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.primarySwatch),
                        alignment: Alignment.center,
                        child: Text('City',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(width: 8,),
                      Container(
                        height: 48,
                        width: (size.width - 70) / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.primarySwatch),
                        alignment: Alignment.center,
                        child: Text('Mountain',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Popular Destination',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),),
                const SizedBox(height: 16,),
                const PopularDestination(),



              ],
            ),
          )),
    );
  }
}
