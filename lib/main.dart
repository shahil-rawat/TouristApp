import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
        home: Home()
    ));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],

        drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: [

          const SizedBox(
          height: 130.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
        ),

            child: Text(
                'Menu',
                style: TextStyle(fontSize: 30, color: Colors.white),
            ),
        ),
          ),

        ListTile(

          leading: const Icon(Icons.account_circle_outlined),
            title: const Text(
                'My Profile',
              style: TextStyle(fontSize: 20),

            ),
            onTap: () {
              Navigator.pop(context);
              },


            ),

        ListTile(

          leading: const Icon(Icons.settings),
           title: const Text(
               'Settings',
             style: TextStyle(fontSize: 20),
           ),
           onTap: () {
             Navigator.pop(context);
             },
        ),
      ],
    ),
    ),


    appBar: AppBar(
    title: Text(
        'Tourist Spots',
      style: TextStyle(fontSize: 22),
    ),


    centerTitle: true,
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.add_a_photo_outlined),
    tooltip: 'Add Picture',
    onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('This is for adding picture')));
    },
    ),
    ],
    ),

    body: Column(
    children: <Widget>[
      SizedBox(height: 10),
      const Text(
        "Dudhsagar Falls",
        style: TextStyle(fontSize: 29),
      ),

      SizedBox(height: 10),
      Image(

        image: AssetImage('assets/ddsgr.jpg'),
      ),

      Padding(
        padding: EdgeInsets.all(15), //apply padding to all four sides
        child: Text("Dudhsagar Falls is a four-tiered "
            "waterfall located on the Mandovi River in the Indian state of Goa."
            "The falls is located in the Bhagwan Mahaveer Sanctuary and Mollem "
            "National Park among the Western Ghats. The falls is a punctuation "
            "mark in the journey of the Mandovi River from the Western Ghats to "
            "Panjim where it meets the Arabian sea. "
            "The area is surrounded by deciduous forests with rich biodiversity.",
          style: TextStyle(fontSize: 18),
        ),
      ),

     // const Text(
     //    "Dudhsagar Falls is a four-tiered "
     //        "waterfall located on the Mandovi River in the Indian state of Goa."
     //        "The falls is located in the Bhagwan Mahaveer Sanctuary and Mollem "
     //        "National Park among the Western Ghats. The falls is a punctuation "
     //        "mark in the journey of the Mandovi River from the Western Ghats to "
     //        "Panjim where it meets the Arabian sea. "
     //        "The area is surrounded by deciduous forests with rich biodiversity.",
     //    style: TextStyle(fontSize: 20),
     //
     //  ),
      ],
    ),

    // Text(
    // "Description of tourist Places",
    // style: TextStyle(fontSize: 24),
    // ),


    // Center(
    //   child:
    //   Container(
    //     padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
    //     margin: EdgeInsets.symmetric( horizontal:1.0, vertical : 1.0),
    //     color: Colors.redAccent,
    //     child: Text( "Month"),
    //   ),
    // ElevatedButton.icon(
    //
    //   onPressed: () {},
    //
    //     icon: Icon(Icons.account_circle_sharp),
    //
    //     label: Text("MyContacts"),
    // )

    // child  : Icon(
    //   Icons.account_circle_outlined,
    //   color: Colors.lightBlueAccent,
    //   size: 100,
    // ),
    // child : Image.asset('assets/ex-1.jpg'),


    // Text(
    //   'Just making a little Chatting app',
    //   style: TextStyle(
    //     fontSize: 20.0,
    //     fontWeight: FontWeight.bold,
    //     letterSpacing: 2.0,
    //     color: Colors.lightBlueAccent,
    //   ),
    // ),
    // ),

    // floatingActionButton: FloatingActionButton(
    // onPressed: () {},
    // child: Text(
    // "Click",
    // style: TextStyle (
    // fontSize: 19.0,
    // fontWeight: FontWeight.bold,
    // color: Colors.red,
    // ),
    // )
    // ,
    // )
    // ,

    );
  }
}
