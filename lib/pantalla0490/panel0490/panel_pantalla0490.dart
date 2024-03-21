import 'package:flutter/material.dart';
import 'package:uii_act1_0490/pantalla0490/panel0490/widgets0490/item_guitars0490.dart';

class PanelPantalla0490 extends StatelessWidget {
  const PanelPantalla0490({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/LGonzalezMendoza/img_FluterFlow_ios_6j/main/Flutter%20GonzalezM/Imagenes/marca1.jpg"),
            ),
          )
        ],
        title: Text(
          'Gonzalez Guitar Music 0490',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffff0000),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 5,
                )
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Buscar Guitarras",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/LGonzalezMendoza/img_FluterFlow_ios_6j/main/Flutter%20GonzalezM/Imagenes/fondo.jpg"))),
        ),
        ListTile(
          title: Text("Top Guitarras"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (int i = 1; i <= 10; i++) const ItemGuitar()],
        ))
      ]),
    );
  }
}
