import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expansion Tile",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Text(
            "Expansion Tile",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ExpansionTile(
                title: Text("This is expansion tile"),
                subtitle: Text("Subtitle"),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  )
                ],
              ),
              ExpansionTile(
                title: Text("This is expansion tile"),
                subtitle: Text("Subtitle"),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                children: [
                  Container(
                    height: 200,
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
