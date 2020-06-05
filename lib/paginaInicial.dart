import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "XIGUBO",
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _home createState() => _home();
}

class _home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Xigubo"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
          child: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Text("ola"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Categorias"),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Anunciantes"),
                trailing: Icon(Icons.keyboard_arrow_down)),
            ListTile(
                leading: Icon(Icons.map),
                title: Text("Provincias"),
                trailing: Icon(Icons.keyboard_arrow_down)),
          ],
        ),
      )),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(
              elevation: 1,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: NetworkImage(
                              'https://www.xigubo.co.mz/upload/5d4ad2dd0d2fc8.53012008.png'),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 5,
                        child: Container(
                          width: 70,
                          child: Image(
                            image: NetworkImage(
                                'https://www.xigubo.co.mz/upload/5bd581a6d06bb2.57195610.jpeg'),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 5,
                          top: 5,
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "17%",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ))),
                      Positioned(
                          bottom: 0,
                          height: 120,
                          child: Opacity(
                            opacity: 0.50,
                            child: Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Nome do produto ",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                    Text(
                                      "23.99Mt",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                    Text(
                                      "17%",
                                      style: TextStyle(fontSize: 20,color: Colors.white),
                                    ),
                                  ],
                                )),
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
