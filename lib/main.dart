import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Ujian Akhir Semester PAPB (Semester 6)',
      home: MyHomePage(),
    );
  }
}

// IMAGES
var pecelHeader = 'https://i.ibb.co.com/s1RpfXD/pecel.jpg';
var pecelMenu = 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg';
// COLORS
var textYellow = const Color(0xFFf6c24d);
var iconYellow = const Color(0xFFf4bf47);

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyAppbar(),
      body: SizedBox(
        child: ListView(
          children: const <Widget>[
            SizedBox(height: 16.0),
            FoodListview(),
            SizedBox(height: 16.0),
            SelectTypeSection(),
            SizedBox(height: 16.0),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Keranjang', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: FlutterClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({super.key}); // public widget

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Menu Pilihan',
            style: TextStyle(fontSize: 20.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(),
          MenuItem(),
          MenuItem(),
          MenuItem(),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            // Ukuran Gambar
            height: 100.0,
            width: 100.0,
            child: Image.network(
              pecelMenu, // ini merujuk pada variabel pecelMenu diatas
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0, // jarak ke kanan dengan deskripsi
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: iconYellow,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                        ),
                        Text('4.5')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Pecel Sambel Tumpang',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                    width: 200.0,
                    child: Text(
                      'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                // dasar
                height: 92.0,
                width: 120.0,
                color: Colors.lightGreen[700],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.bowlRice,
                      color: Colors.green[300],
                    ),
                    const SizedBox(
                      // jarak
                      height: 4.0,
                    ),
                    const Text(
                      'Menu Special',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width: 120.0,
              color: Colors.red[600],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Colors.red[400],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    'Menu Terlaris',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: Colors.blue[700],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: Colors.blue[200],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    'Minuman',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
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

class FoodListview extends StatelessWidget {
  const FoodListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(pecelHeader), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      'Promo 20%',
                      style: TextStyle(
                          color: textYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    const Text(
                      'Untuk 10 Pembeli Pertama',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
