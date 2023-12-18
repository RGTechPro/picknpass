import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picknpass/qr_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 3.5, top: 20),
                  child: Text(
                    'Recent',
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            height: 132,
                            decoration: const BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.5,
                                          right: 11.5,
                                        ),
                                        child: Text('Rs.45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: const Color(0xff3EC1FF),
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset('assets/Menu.svg'),
              onPressed: () {},
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
