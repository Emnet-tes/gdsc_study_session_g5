import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final String book_title;
  BookInfo({super.key, required this.book_title});

  final Map<String, List<String>> files = {
    'self help books': [
      "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.",
      "It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers."
    ],
    'popular books': [
      "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.",
      "It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers."
    ],
    'recipie books': [
      "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.",
      "It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers."
    ],
    'sientific books': [
      "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.",
      "It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers."
    ],
    'food recipies': [
      "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.",
      "It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers."
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(

            children: [
              Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 236, 150, 21),
                    width: 3,
                    height: 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 10,bottom: 50)),
                  Text(
                    'Book Information',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
              Text(files[book_title]?[0] ?? 'nothing here',textAlign: TextAlign.justify),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    color: Color.fromARGB(255, 236, 150, 21),
                    width: 3,
                    height: 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 10,bottom: 50)),

                  Text(
                    'About Author',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)
                  )
                ]
              ),
              Text(files[book_title]?[1] ?? 'nothing here' ,textAlign: TextAlign.justify)
              
            ]));
  }
}
