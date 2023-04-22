import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/popularPlants/vegetables.dart';

class lemon extends StatefulWidget {
  const lemon({super.key});

  @override
  State<lemon> createState() => _lemonState();
}

class _lemonState extends State<lemon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //
        title:  Padding(
          padding: const EdgeInsets.only(right: 150),
          child: Text('lemon',
          style: GoogleFonts.merriweatherSans(fontSize: 26,color: Color(0xff184A2C)),
                ),
        ),
          
        leading: Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffF9F9F9)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff707070),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const vegetables()),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
              
            children: [
              Image.asset('assets/lemon.png',width: 356.w,height: 213.h),
              Text("Lemons are a popular fruit that people use in small quantities to add flavor to food. However, they rarely consume them alone due to their intense, sour taste. \n\n Lemons give flavor to baked goods, sauces, salad dressings, marinades, drinks, and desserts, and they are also a good source of vitamin C. \n\n One 58 gram (g) lemon can provide over 30 milligramsTrusted Source (mg) of vitamin C. \n\n Vitamin C is essential for health, and a deficiency can lead to health problems. The early explorers knew this and took lemons on their long voyages to help prevent or treat scurvy, a life threatening condition that was common among sailors.\n This article looks at the nutritional content of lemons, their possible health benefits, ways to use them in food, and any potential health risks.The lemon plant forms an evergreen spreading bush or small tree, 3–6 metres (10–20 feet) high if not pruned. Its young oval leaves have a decidedly reddish tint; later they turn green. In some varieties the young branches of the lemon are angular; some have sharp thorns at the axils of the leaves. The flowers have a sweet odour and are solitary or borne in small clusters in the axils of the leaves. Reddish-tinted in the bud, the petals are usually white above and reddish purple below. The fruit is oval with a broad, low, apical nipple and forms 8 to 10 segments. The outer rind, or peel, yellow when ripe and rather thick in some varieties, is prominently dotted with oil glands. The white spongy inner part of the peel, called the mesocarp or albedo, is nearly tasteless and is the chief source of commercial grades of pectin. The seeds are small, ovoid, and pointed; occasionally fruits are seedless. The pulp is decidedly acidic.",
              style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 18,
                          fontFamily: 'merriweatherSans')
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}