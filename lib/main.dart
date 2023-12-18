import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://leviatan.mx/wp-content/uploads/2021/08/rosario1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1XCyshJGWCykmFToTZVsNYuxt5oRN7bdopQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_7lBXRdo-xDhJ_PVBf8obXiB7LvoblGqKQ&usqp=CAU',
  ];
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  'https://leviatan.mx/wp-content/uploads/2021/08/rosario1.jpg',
                  height: 180, // ajusta la altura según tus necesidades
                  width: double.infinity, // ocupa todo el ancho disponible
                  fit:
                      BoxFit.cover, // ajusta la imagen al tamaño del contenedor
                ),
                const Positioned(
                  top: 40, // ajusta la posición vertical del primer Text
                  left: 10, // ajusta la posición horizontal del primer Text
                  child: Text(
                    'Capilla de la virgen del Rosario',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 90, // ajusta la posición vertical del segundo Text
                  left: 160, // ajusta la posición horizontal del segundo Text
                  child: Text(
                    'Puebla',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                    top: 120, // ajusta la posición vertical del segundo Text
                    left: 120,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.0,
                    )),
                const Positioned(
                    top: 120, // ajusta la posición vertical del segundo Text
                    left: 150,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.0,
                    )),
                const Positioned(
                    top: 120, // ajusta la posición vertical del segundo Text
                    left: 180,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.0,
                    )),
                const Positioned(
                    top: 120, // ajusta la posición vertical del segundo Text
                    left: 210,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.0,
                    )),
                const Positioned(
                    top: 120, // ajusta la posición vertical del segundo Text
                    left: 240,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.0,
                    )),
              ],
            ),
            const Text(
                style: TextStyle(
                  color: Color(0xFF8C3063),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                'Descripcion'),
            const Text(
                'La capilla de la Virgen del Rosario es la capilla anexa al Templo de Santo Domingo en la ciudad de Puebla, México. Obra del siglo xvii, cumbre del barroco novohispano, fue calificada en su época como La Casa de Oro, así como la octava maravilla del mundo por fray Diego de Gorozpe, en un impreso de 1690.1​ Constituye el más destacado ejemplo del barroco novohispano y una de las mayores realizaciones artístico-religiosas de México. Está ubicada en la avenida peatonal 5 de mayo número 407.'),
            const Text(
                style: TextStyle(
                  color: Color(0xFF8C3063),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                'Informacion'),
            const Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_month,
                          color: Color(0xFFB1D2BF),
                          size: 24.0,
                        ),
                        Text(style: TextStyle(), 'Dias de: Lunes a Sabado')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.money_outlined,
                          color: Color(0xFFF4D6BA),
                          size: 36.0,
                        ),
                        Text('Precio: Gratis'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.history_toggle_off,
                          color: Color(0xFF616F70),
                          size: 30.0,
                        ),
                        Text('Horario: 07:00 a 17:00'),
                      ],
                    ),
                    Text(
                        style: TextStyle(
                          color: Color(0xFF8C3063),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        'Galeria'),
                  ],
                )
              ],
            ),
            // Container(
            //   child: Row(children: [
            //     Image.network(
            //       'https://leviatan.mx/wp-content/uploads/2021/08/rosario1.jpg',
            //       width: 120,
            //     ),
            //     Image.network(
            //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1XCyshJGWCykmFToTZVsNYuxt5oRN7bdopQ&usqp=CAU',
            //       width: 120,
            //     ),
            //     Image.network(
            //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_7lBXRdo-xDhJ_PVBf8obXiB7LvoblGqKQ&usqp=CAU',
            //       width: 120,
            //     )
            //   ]),
            // ),
            CarouselSlider(
              options: CarouselOptions(
                height: 70,
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.symmetric(horizontal: 5.0),
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: Row(children: [
                        Image.network(
                          'https://leviatan.mx/wp-content/uploads/2021/08/rosario1.jpg',
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1XCyshJGWCykmFToTZVsNYuxt5oRN7bdopQ&usqp=CAU',
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_7lBXRdo-xDhJ_PVBf8obXiB7LvoblGqKQ&usqp=CAU',
                        )
                      ]),
                    );
                  },
                );
              }).toList(),
            ),
            const Text(
                style: TextStyle(
                  color: Color(0xFF8C3063),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                'Ubicacion')
          ],
        ),
      ),
    );
  }
}
