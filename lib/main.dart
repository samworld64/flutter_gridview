import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(
      100, (index) => {"id": index, "name": "Product ${index + 1}"}).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              ...List.generate(
                myProducts.length,
                (index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(myProducts[index]["name"]),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      //borderRadius: BorderRadius.circular(15),
                    ),
                  );
                },
              ),
            ],
          )
          // GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 200,
          //         childAspectRatio: 2 / 3,
          //         crossAxisSpacing: 20,
          //         mainAxisSpacing: 20),
          //     itemCount: myProducts.length,
          //     itemBuilder: (BuildContext ctx, index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         child: Text(myProducts[index]["name"]),
          //         decoration: BoxDecoration(
          //           color: Colors.amber,
          //           //borderRadius: BorderRadius.circular(15),
          //         ),
          //       );
          //     }),
          ),
    );
  }
}
