import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _petrolPricePerLitre = 21;
  int _dieselPricePerLitre = 28;

  void _incrementPetrolPrice() {
    setState(() {
      _petrolPricePerLitre++;
    });
  }

  void _incrementPerLitre() {
    setState(() {
      _dieselPricePerLitre++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: const Icon(Icons.settings),
          onPressed: _incrementPerLitre,
        ),
        title: Center(
            child: Text(widget.title)


        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],

      ),
      body: Center(

        child: Column(

        children:[
        Container(
        child: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Card(
            shadowColor: Colors.greenAccent.shade200,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 3,
              ),
                borderRadius: BorderRadius.circular(20.0),

            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,


              children: <Widget>[
                // SizedBox(width: 10),

                const Text(
                  'Current Petrol Price:',
                ),
                Text(
                  'R$_petrolPricePerLitre per litre.',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),
              ],
            ),

          ),
          ),
        ),
        ),
        ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),

              child: Center(
                child: Card(
                  shadowColor: Colors.orangeAccent.shade200,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.orangeAccent,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20.0),

                  ),

                child: Padding(
                padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text(

    'Current Diesel Price:',
    ),
    Text(
    'R$_dieselPricePerLitre per litre.',
    style: Theme
        .of(context)
        .textTheme
        .headline4,
    ),

    ],
    ),
                  ),



    )
                ),

              ),

            ),
  ],
          ),
      ),


      floatingActionButton: FloatingActionButton(

        onPressed: _incrementPetrolPrice ,
        // onPressed:
        tooltip: 'Increment Fuel Price',
        // tooltips: 'Decrement Fuel Price',
        child: const Icon(Icons.add),
        // children: const Icon(Icons.add),
      ),


    );





  }
  }

