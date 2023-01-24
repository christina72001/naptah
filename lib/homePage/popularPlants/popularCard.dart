import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/homePage/popularPlants/popular_card_data.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0,left: 15,right: 15
      ),
      child: Container(
        height: size.height,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: popularCardList.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 15,
            );
          },
          itemBuilder: (context, index) => _popularCard(
            context,
            popularCardList[index],
          ),
        ),
      ),
    );
  }

  Widget _popularCard(BuildContext context, Popular_Card popularCard) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 125,
        width: double.infinity,
        padding: EdgeInsetsDirectional.all(15),
        decoration: BoxDecoration(
          color: Color(0xffEBFDF2),
          borderRadius: BorderRadiusDirectional.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${popularCard.name}',
              style: GoogleFonts.roboto(
                  textStyle:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  color: Colors.black),
            ),
            Image(image: AssetImage('${popularCard.image.toString()}',),height: 110,width: 110,),

          ],
        ),
      ),
    );
  }
}
