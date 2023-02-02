import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui_flutter/model/place.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: popularDestionation.length,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                debugPrint('click');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 220,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                        image: DecorationImage(
                          image: AssetImage(
                            popularDestionation[index].asset
                          ),
                          fit: BoxFit.cover
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                      child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),

                    ),
                    Container(
                      height: 80,
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(popularDestionation[index].name,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(popularDestionation[index].location,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                                    ],
                                  )
                                ],
                              )
                          ),
                          Text(popularDestionation[index].price.toString(),style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
