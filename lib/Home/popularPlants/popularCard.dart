import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/popularPlants/popular_card_data.dart';
import 'package:naptah/Home/popularPlants/vegetables.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 15, right: 15),
      child: Container(
        child: ListView.separated(
          itemCount: popularCardList.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8,
            );
          },
          itemBuilder: (context, index) => _popularCard(
            context,
            popularCardList[index],
            index,
          ),
        ),
      ),
    );
  }

  Widget _popularCard(
      BuildContext context, Popular_Card popularCard, int index) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vegetables()),
          );
        }
      },
      child: Container(
        height: 90,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: const Color(0xffEBFDF2),
          borderRadius: BorderRadiusDirectional.all(
            Radius.circular(22),
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
            Image(
              image: AssetImage(
                '${popularCard.image.toString()}',
              ),
              height: 110,
              width: 110,
            ),
          ],
        ),
      ),
    );
  }
}
