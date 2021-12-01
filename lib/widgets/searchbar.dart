import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        style: GoogleFonts.fredokaOne(color: Color(0xffD5D7E2)),
        decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            fillColor: Color(0xff272E3C),
            labelText: "🔍 Search Here",
            labelStyle: GoogleFonts.fredokaOne(
                color: Color(0xffD5D7E2).withOpacity(0.6), fontSize: 15)),
      ),
    );
  }
}
