import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widget/BuildDrawer.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> categories = [
    'Elektronik',
    'Fashion',
    'Aksesoris',
    'Buku',
    'E-Book',
    'Komputer & Laptop',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("Toko Online"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("ini melakukan pencarian");
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("Ini untuk shopping");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              child: Carousel(
                autoplay: true,
                indicatorBgPadding: 2.0,
                images: [
                  AssetImage("assets/images/slide1.jpg"),
                  AssetImage("assets/images/slide2.jpg"),
                  AssetImage("assets/images/slide3.jpg"),
                  AssetImage("assets/images/slide4.jpg"),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 10.0),
              child: Text(
                "Category",
                style: TextStyle(fontSize: 18.0),
              ),
            ),

            // Categories
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/eletronik.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child:
                                Text("Elektronik", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/fashion.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child: Text("Fashion", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/accessories.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child:
                                Text("Aksesoris", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/buku.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child: Text("Buku", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/ebook.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child: Text("E-Book", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/laptop.png",
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 03.0),
                            child: Text(
                              "Laptop",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Fashion Product
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Text(
                "Fashion Produk",
                style: TextStyle(fontSize: 18.0),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 150.0,
                        child: Image.asset(
                          'assets/images/product/casual.png',
                          width: 100.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Color(0xFF0E3311).withOpacity(0.4),
                        height: 80.0,
                        width: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Baju Casual",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 05.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.payment, color: Colors.white),
                                  SizedBox(width: 05.0),
                                  Text(
                                    "Rp. 400.000",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 150.0,
                        child: Image.asset(
                          'assets/images/product/casual.png',
                          width: 100.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Color(0xFF0E3311).withOpacity(0.4),
                        height: 80.0,
                        width: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Baju Casual",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 05.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.payment, color: Colors.white),
                                  SizedBox(width: 05.0),
                                  Text(
                                    "Rp. 400.000",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150.0,
                          child: Image.asset(
                            'assets/images/product/casual.png',
                            width: 100.0,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Color(0xFF0E3311).withOpacity(0.4),
                          height: 80.0,
                          width: 120.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Baju Casual",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 05.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.payment, color: Colors.white),
                                    SizedBox(width: 05.0),
                                    Text(
                                      "Rp. 400.000",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150.0,
                          child: Image.asset(
                            'assets/images/product/casual.png',
                            width: 100.0,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Color(0xFF0E3311).withOpacity(0.4),
                          height: 80.0,
                          width: 120.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Baju Casual",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 05.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.payment, color: Colors.white),
                                    SizedBox(width: 05.0),
                                    Text(
                                      "Rp. 400.000",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150.0,
                          child: Image.asset(
                            'assets/images/product/casual.png',
                            width: 100.0,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Color(0xFF0E3311).withOpacity(0.4),
                          height: 80.0,
                          width: 120.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Baju Casual",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 05.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.payment, color: Colors.white),
                                    SizedBox(width: 05.0),
                                    Text(
                                      "Rp. 400.000",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150.0,
                          child: Image.asset(
                            'assets/images/product/casual.png',
                            width: 100.0,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Color(0xFF0E3311).withOpacity(0.4),
                          height: 80.0,
                          width: 120.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Baju Casual",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 05.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.payment, color: Colors.white),
                                    SizedBox(width: 05.0),
                                    Text(
                                      "Rp. 400.000",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
