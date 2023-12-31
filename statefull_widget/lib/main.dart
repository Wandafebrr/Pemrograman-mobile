import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double celcius = 0.0;
  double kelvin = 0.0;
  double reamur = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konverter Suhu"),
      ),
      body: SingleChildScrollView( 
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan suhu terlebih dahulu';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    celcius = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Suhu dalam Kelvin", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 20),
                        Text("$kelvin", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Suhu dalam Reamur", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 20),
                        Text("$reamur", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
                Container(
                     margin: EdgeInsets.only(top: 300),
                  child: InkWell(
                    onTap: () {
                      // Logika konversi
                      kelvin = celcius + 273.15;
                      reamur = celcius * 4 / 5;
                      setState(() {});
                    },
                    child: Container(
                      width: 200, // Sesuaikan lebar sesuai keinginan
                      height: 50, // Sesuaikan tinggi sesuai keinginan
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Konversi Suhu",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}