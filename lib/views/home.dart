import 'package:bakerstation/helper/cakes.dart';
import 'package:bakerstation/models/cake.dart';
import 'package:bakerstation/widgets/drawer.dart';
import 'package:bakerstation/widgets/itemtile.dart';
import 'package:bakerstation/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Cakes cakes = Cakes();
  List<Cake> items = [];

  @override
  void initState() {
    items = cakes.getCakes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDraw(),
      backgroundColor: Color(0xff1F2125),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1F2125),
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            color: Color(0xffD5D7E2),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 35),
            icon: Icon(Icons.dashboard),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
            padding: EdgeInsets.symmetric(horizontal: 35),
            color: Color(0xffD5D7E2),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Surprise your Family and Friends with Delicious Birthday and other Cakes! 🎂",
                style: GoogleFonts.fredokaOne(
                  color: Color(0xffD5D7E2),
                  fontSize: 20,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: SearchBar()),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    CakeTile(
                      item: items[index],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
