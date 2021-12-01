import 'package:bakerstation/models/cake.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CakeTile extends StatelessWidget {
  Cake item;

  CakeTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          color: Color(0xff272E3C), borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          // For Text
          Positioned(
            top: 30,
            left: 170,
            child: Container(
              padding: EdgeInsets.only(right: 25),
              height: 100,
              width: 170,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: GoogleFonts.fredokaOne(
                      color: Color(0xffD5D7E2),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Price",
                      style: GoogleFonts.fredokaOne(
                          color: Color(0xffD5D7E2).withOpacity(0.6),
                          fontSize: 11)),
                  Text("₹ ${item.price.toString()}",
                      style: GoogleFonts.fredokaOne(
                        color: Color(0xffD5D7E2),
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ),
          // For image
          Positioned(
              left: 20,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 150,
                width: 130,
                child: Image.asset(item.imgUrl),
              ))
        ],
      ),
    );
  }
}
