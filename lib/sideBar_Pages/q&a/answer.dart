import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:naptah/sideBar_Pages/q&a/Q&A.dart';

class Answers extends StatelessWidget {
  const Answers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.asset(
                  'assets/answer.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.7),
                  colorBlendMode: BlendMode.modulate,
                ),
                // IconButton(
                //     onPressed: () {
                //       Navigator.pop(
                //         context,
                //         MaterialPageRoute(builder: (context) => const Questions()),
                //       );
                //     },
                //     icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 30,)
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 120,
                    right: 20,
                  ),
                  child: Text(
                    'How to save plant orange and to get good fruits?',
                    style: GoogleFonts.merriweatherSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    """
They require a medium temperature of 65°F (18°C) or higher to ripen.
Therefore, be sure to wait until all danger of frost has passed before placing your plants in the garden.
\nrequire that they be grown in areas with full sun and should be protected from strong winds as well.
you can lay them on their sides and cover them with soil.
\nleave the tops exposed; After two days, the tops straighten and begin to grow upright.Tomatoes require a lot of water.So keep moisture.\nCheck your tomato plants daily for any ripe fruit. Picking often encourages more production.
\nOnce the growing season is nearing the end, it's a good idea to remove any blooms as well to encourage nutrients to reach the existing tomato fruits.""",
                    style: GoogleFonts.merriweatherSans(
                        color: Color(0xff707070),
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
