import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0, left: 3.5),
                  child: Text(
                    'Welcome,',
                    style: TextStyle(fontSize: 23),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
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
                                      builder: (context) => QRPage()));
                            },
                            child: Text(
                              'QR Scan',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff1088BF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                          ),
                        )
                      ]),
                  height: 132,
                  decoration: BoxDecoration(
                      color: Color(0xff3EC1FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Top Picks',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Recent',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Grocery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cosmetics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff3EC1FF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.5, top: 20),
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
                      decoration: BoxDecoration(
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
                      physics: ScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 3.5, top: 20),
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
                      decoration: BoxDecoration(
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
                      physics: ScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 175,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset('assets/lorem.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11.5, right: 11.5, bottom: 8),
                                    child: Text(
                                        'Lorem Ipsum dolor sit amet cisoi lae do re...',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff1088BF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                            height: 132,
                            decoration: BoxDecoration(
                                color: Color(0xff3EC1FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xff3EC1FF),
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset('assets/Menu.svg'),
              onPressed: () {},
            ),
            title: SvgPicture.asset('assets/logo.svg'),
            actions: [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
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
