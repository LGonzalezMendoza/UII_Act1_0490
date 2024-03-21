import 'dart:html';

import 'package:flutter/material.dart';

class ItemGuitar extends StatelessWidget {
  const ItemGuitar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/LGonzalezMendoza/img_FluterFlow_ios_6j/main/Flutter%20GonzalezM/Imagenes/Tk-Legacy.jpg")),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nuestras Guitarra",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
