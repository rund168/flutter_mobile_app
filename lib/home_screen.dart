import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/screens/call_screen.dart';
import 'package:flutter_mobile_app/screens/product_screen.dart';
import 'package:flutter_mobile_app/widgets/header_card_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int valueCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        actions: [
          Icon(
            Icons.notification_add,
            color: Colors.white,
          ),
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Products"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ProductScreen())
                );
              },
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.white, Colors.indigoAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _header(),
              Column(
                children: [
                  Container(
                      width: 999,
                      // height: 300,
                      child: Image.asset(
                        "assets/Cyber.png",
                        fit: BoxFit.cover,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Title"),
                      Text("${valueCount}"),
                      Icon(Icons.star)
                    ],
                  )
                ],
              ),
              Container(
                width: 500,
                // height: 300,
                child: Image.network(
                  "https://bbu.edu.kh/photos/article/434832087_884322750372950_2200676652716615990_n.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 500,
                // height: 300,
                child: Image.network(
                  "https://bbu.edu.kh/photos/article/434832087_884322750372950_2200676652716615990_n.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 500,
                // height: 300,
                child: Image.network(
                  "https://bbu.edu.kh/photos/article/434832087_884322750372950_2200676652716615990_n.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _headerCard(title, Icon icon) {
    return InkWell(
      onTap: () {
        print("ON CLICK");
        setState(() {
          valueCount++;
        });
      },
      child: Column(
        children: [
          icon,
          Container(
            child: Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _headerCard("home", Icon(Icons.home)),
        HeaderCardWidgets(
          title: "Call",
          icon: Icon(Icons.call),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CallScreen(title: "Call Screen KHMER",)));
          },
        ),
        HeaderCardWidgets(
          title: "QR",
          icon: Icon(Icons.qr_code),
          onPressed: () {
            setState(() {
              valueCount++;
            });
          },
        ),
      ],
    );
  }
}
