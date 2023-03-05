import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key, this.name, this.icon, required this.onPressed})
      : super(key: key);
  final String? name;
  final IconData? icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "${name}",
              style: GoogleFonts.merriweatherSans(
                  fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
