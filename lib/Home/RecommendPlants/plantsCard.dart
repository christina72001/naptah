import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/RecommendPlants/Coffeaplants.dart';
import 'package:naptah/Home/RecommendPlants/plants_card_data.dart';
import 'package:naptah/Home/RecommendPlants/spathiphyhllum.dart';

class PlantsCard extends StatelessWidget {
  const PlantsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: plantsCardsList.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
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
        width: MediaQuery.of(context).size.height * 0.18,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${plants.name}',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.008),
              Text('${plants.description}',
                  maxLines: 3,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage('${plants.image.toString()}'),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.16,
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
