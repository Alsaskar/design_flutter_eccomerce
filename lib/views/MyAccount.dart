import 'package:flutter/material.dart';
import 'package:ecommerce/widget/BuildDrawer.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  child: Image.asset(
                    "assets/images/saskartech.png",
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 05.0),
                  child: Text(
                    "Saskar Tech",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "Toko untuk menjual barang elektronik dan juga berbagai laptop",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 05.0),
                  width: MediaQuery.of(context).size.width,
                  height: 120.0,
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Text(
                        "Informasi",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          information("200", Icons.check_circle, "Product"),
                          information("200", Icons.favorite, "Favorite"),
                          information("100", Icons.account_box, "Klien"),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Clients",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      imagesClient("assets/images/clients/client1.jpg"),
                      imagesClient("assets/images/clients/client2.jpg"),
                      imagesClient("assets/images/clients/client3.jpg"),
                      imagesClient("assets/images/clients/client4.jpg"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget information(String text, IconData icon, String text2) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 03.0),
            child: Text(
              text2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget imagesClient(String imagesname) {
    return Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imagesname),
        ),
      ),
    );
  }
}
