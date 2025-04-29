import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proje Odevi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Proje Ödevi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.grey,
              ),
              child: Icon(Icons.person, size: 90, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Sağlık Bakanlığı",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Ankara"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_month, color: Colors.blue, size: 40),
                    SizedBox(height: 5),
                    Text("27 Yaş"),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.rule, color: Colors.blue, size: 40),
                    SizedBox(height: 5),
                    Text("170 cm"),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.medical_services, color: Colors.blue, size: 40),
                    SizedBox(height: 5),
                    Text("89 Kg"),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bloodtype, color: Colors.red, size: 40),
                    SizedBox(height: 5),
                    Text("AB Rh+"),
                  ],
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Kalp Krizi Riski: %1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print("Hesaplandı");
              },
              child: Text("Hesapla"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print("Düzenle");
              },
              child: Container(
                width: 250,
                height: 40,
                alignment: Alignment.center,
                color: Colors.lightGreenAccent,
                child: Text("Profilimi Düzenle"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
