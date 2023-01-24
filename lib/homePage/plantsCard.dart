import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/homePage/plants_card_data.dart';

class PlantsCard extends StatelessWidget {
  const PlantsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,bottom: 15,
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
          ),
        ),
      ),
    );
  }

  Widget _plantsCard(BuildContext context, Plants plants) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
          color: Color(0xffD4C1A5),
        ),
        width: 170,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
