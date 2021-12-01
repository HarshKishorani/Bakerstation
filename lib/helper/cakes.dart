import 'package:bakerstation/models/cake.dart';

class Cakes {
  List<Cake> getCakes() {
    List<Cake> cakes = [];

    //Cake 1
    Cake item = Cake(
        name: "Chocolaty Strawberry",
        price: 200,
        description: "description",
        imgUrl: "assets/cake1.png");
    cakes.add(item);

    //Cake 2
    item = new Cake(
        name: "Casatta",
        price: 300,
        description: "description",
        imgUrl: "assets/cake2.png");
    cakes.add(item);

    //cake3
    item = new Cake(
        name: "Mango ",
        price: 350,
        description: "description",
        imgUrl: "assets/cake3.png");
    cakes.add(item);

    //cake 4
    item = new Cake(
        name: "Kitkat",
        price: 200,
        description: "description",
        imgUrl: "assets/cake4.png");
    cakes.add(item);

    //cake 5
    item = new Cake(
        name: "Oreo",
        price: 400,
        description: "description",
        imgUrl: "assets/cake5.png");
    cakes.add(item);
    return cakes;
  }
}
