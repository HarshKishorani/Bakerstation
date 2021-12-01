import 'package:flutter/material.dart';

class SideDraw extends StatelessWidget {
  const SideDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(45), topRight: Radius.circular(45)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Drawer(
            child: Container(
              color: Color(0xff272E3C),
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(color: Color(0xffD5D7E2)),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
