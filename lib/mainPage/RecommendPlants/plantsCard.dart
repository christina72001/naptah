import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/mainPage/RecommendPlants/Coffeaplants.dart';
import 'package:naptah/mainPage/RecommendPlants/plants_card_data.dart';
import 'package:naptah/mainPage/RecommendPlants/spathiphyhllum.dart';


class PlantsCard extends StatelessWidget {
  const PlantsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: 10.0,bottom: 15,left: 10, right: 10
      ),
      child: Container(
        height: 190,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: plantsCardsList.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15,
            );
          },
          itemBuilder: (context, index) => _plantsCard(
            context,
            plantsCardsList[index],
            index,
          ),
        ),
      ),
    );
  }

  Widget _plantsCard(BuildContext context, Plants plants, int index) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const spathiphyhllum()),
          );
        } 
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const coffeaPlants()),
          );
        } 
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
          color: const Color(0xffD4C1A5),
        ),
        width: 170,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${plants.name}',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 5,
              ),
              Text('${plants.description}',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ))),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage('${plants.image.toString()}'),
                    height: 70,
                    width: 70,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
