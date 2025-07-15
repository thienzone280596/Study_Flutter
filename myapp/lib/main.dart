import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First app',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/image1.jpg'),
              width: 200,
              height: 200,
            ),
            Image(image: NetworkImage('https://picsum.photos/250?image=9')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Flutter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lexend',
                  ),
                ),
                Icon(Icons.star, color: Colors.red[600]),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.sunny),
                  label: const Text('ElevatedButton'),
                  iconAlignment: IconAlignment.start,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.beach_access),
                  color: Colors.amber,
                ),
              ],
            ),
            Container(
              color: Colors.red[600],
              child: Text('Container'),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('Click', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
