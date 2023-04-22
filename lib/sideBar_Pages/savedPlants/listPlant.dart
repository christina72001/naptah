import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/sideBar_Pages/savedPlants/savedItems.dart';

class ListPlantsWidget extends StatelessWidget {
  final SavedPlants item;
  final VoidCallback onClicked;

  ListPlantsWidget({required this.item, required this.onClicked, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildItem();
  }
  Widget buildItem() => Container(
    width: 370,
    height: 150,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2, 3),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.zero),
    ),
    child: ListTile(
      leading: Container(
        height: 100,
        width: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Image.asset(item.image.toString()),
      ),
      title: Text(
        '${item.name}',
        style: GoogleFonts.merriweatherSans(
          fontSize: 21,
          fontWeight: FontWeight.normal,
          color: Color(0xff184A2C),
        ),
      ),
      subtitle: Text(
        style: GoogleFonts.merriweatherSans(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Color(0xff707070),
        ),
        item.date.toString(),
      ),
      trailing: IconButton(
        onPressed:onClicked,
        icon: Image.asset('assets/saved_images/delete.png'),
      ),
    ),
  );
}
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// height: 100,
// width: 150,
// decoration:
// BoxDecoration(borderRadius: BorderRadius.circular(25)),
// child: Image.asset("assets/saved_images/lemon.png"),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [

// ],
// ),

// ],
// ),
