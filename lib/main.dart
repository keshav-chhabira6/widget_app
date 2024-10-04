import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' Widgets '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/IMG_2398.JPG',
                  width: 200, height: 200),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Icon(Icons.home,
                            size: 40, color: Color.fromARGB(255, 15, 108, 183)),
                        Text('Home'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.favorite, size: 40, color: Colors.red),
                        Text('Favorite'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.photo,
                            size: 40,
                            color: Color.fromARGB(255, 158, 158, 158)),
                        Text('photos'),
                      ],
                    ),
                  ],
                ),
              ),

              // Elevated button at the bottom
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('ElevatedButton pressed');
                  },
                  child: const Text('Click Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
