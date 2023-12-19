import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picknpass/my_orders.dart';
import 'package:picknpass/qr_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> myKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    const itemPrices = {
      'Parle-g': 10,
      'Britannia Nutrichoice': 20,
      'Monaco': 10,
      'Oreo': 10,
      'Popcorn': 10,
      'Dairy milk': 10,
      'Nestle chocolate': 10,
      'Bourbon biscuits': 10,
      'Uncle chips': 20,
      'Jimjam': 10,
    };

    List<ProductCard> productCards = itemPrices.entries
        .map((entry) => ProductCard(name: entry.key, price: entry.value))
        .toList();

    return SafeArea(
      child: Scaffold(
          key: myKey,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 126, 137, 142),
                    ),
                    child: SvgPicture.asset('assets/logo.svg')),
                ListTile(
                  title: const Text('My Orders',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  onTap: () {
                    // Handle My Orders action
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyOrders())); // Close the drawer
                  },
                ),
                ListTile(
                  title: const Text('Help',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  onTap: () {
                    // Handle Help action
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: const Text('FAQs',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  onTap: () {
                    // Handle FAQs action
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(17.0),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 12.0, left: 3.5),
                  child: Text(
                    'Welcome,',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 132,
                  decoration: const BoxDecoration(
                      color: Color(0xff3EC1FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Enter the\nStore',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        SizedBox(
                          width: 120,
                          height: 43,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const QRPage()));
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff1088BF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            child: const Text(
                              'QR Scan',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            child: const Text(
                              'Top Picks',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            child: const Text(
                              'Recent',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            child: const Text(
                              'Grocery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            child: const Text(
                              'Cosmetics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.5, top: 20),
                  child: Text(
                    'Best for you',
                    style: TextStyle(fontSize: 15, color: Color(0xff3EC1FF)),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.2, bottom: 10),
                  child: UnconstrainedBox(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xff3EC1FF), width: 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      itemCount: productCards.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            name: productCards[index].name,
                            price: productCards[index].price);
                      },
                    )),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: const Color(0xff3EC1FF),
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset('assets/Menu.svg'),
              onPressed: () {
                myKey.currentState!.openDrawer();
              },
            ),
            title: SvgPicture.asset('assets/logo.svg'),
            actions: const [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Shop ID:'),
                    Text(
                      'GB-THPR',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.name, required this.price});
  String name;
  int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 175,
        height: 132,
        decoration: const BoxDecoration(
            color: Color(0xff3EC1FF),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/$name.jpeg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.5, right: 11.5, bottom: 8),
                child: Text(name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11.5, right: 11.5, top: 8),
                    child: Text('₹ $price',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24)),
                  ),
                  // SizedBox(
                  //   width: 100,
                  //   height: 35,
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     style: const ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStatePropertyAll(
                  //                 Color(0xff1088BF)),
                  //         shape: MaterialStatePropertyAll(
                  //             RoundedRectangleBorder(
                  //                 borderRadius:
                  //                     BorderRadius.all(
                  //                         Radius.circular(
                  //                             10))))),
                  //     child: const Text(
                  //       'Add to Cart',
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 15),
                  //     ),
                  //   ),
                  // ),
                ],
              )
            ]),
      ),
    );
  }
}
