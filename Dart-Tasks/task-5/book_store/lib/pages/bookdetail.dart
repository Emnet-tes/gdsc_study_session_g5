import 'package:book_store/pages/firstscreen.dart';
import 'package:book_store/util/Bookinfo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:book_store/util/cards.dart';

class Bookdetail extends StatelessWidget {
  final String book_name;
  final String book_img;

  Bookdetail({
    super.key,
    required this.book_img,
    required this.book_name,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Stack(children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Hero(
                tag: book_name,
                child: Image.asset(
                  book_img,
                  fit: BoxFit.fitWidth,
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => firstscreen()));
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ))),
              )),
          Padding(
              padding: EdgeInsets.all(90.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Image.asset(
                        book_img,
                        height: 100,
                      )))),
        ]),
        Align(
          child: Container(
              height: size.height * 1.4,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      book_name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Book by carl sagan | 2h 30m',
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,
                            size: 20, color: Color.fromARGB(255, 231, 224, 26)),
                        Icon(Icons.star,
                            size: 20, color: Color.fromARGB(255, 231, 224, 26)),
                        Icon(Icons.star,
                            size: 20, color: Color.fromARGB(255, 231, 224, 26)),
                        Icon(Icons.star_border_outlined,
                            size: 20, color: Color.fromARGB(255, 231, 224, 26)),
                        Icon(Icons.star_border_outlined,
                            size: 20, color: Color.fromARGB(255, 231, 224, 26))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 7,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: Text('Free',
                                style: TextStyle(
                                    color: const Color.fromARGB(77, 0, 0, 0)))),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 7,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 20,
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 7,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: Icon(Icons.share_outlined, size: 20))
                      ],
                    ),
                    BookInfo(book_title: book_name),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('User review',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                    ))
                              ],
                            ),
                            Row(children: [
                              CircleAvatar(
                                child: Lottie.network(
                                    'https://lottie.host/42b00182-5493-49bf-aa89-8dee27da05e2/F1yjHBxtHW.json'),
                                radius: 25,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Raon',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100)),
                                  Text('This is Intersting book'),
                                  Text(
                                    'Jan 2023',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w100),
                                  )
                                ],
                              )
                            ]),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 10)),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Related Books',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15))
                                ]),
                            Container(
                                height: 185,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Bookdetail(
                                                      book_img:
                                                          'images/ramyon.png',
                                                      book_name:
                                                          'food recipies')));
                                        },
                                        child: Cards(
                                            about_img: 'food recipies',
                                            img_address: 'images/ramyon.png')),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0)),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bookdetail(
                                                          book_img:
                                                              'images/sun.jpg',
                                                          book_name:
                                                              'popular books')));
                                        },
                                        child: Cards(
                                            about_img: 'popular books',
                                            img_address: 'images/sun.jpg')),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0)),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Bookdetail(
                                                      book_img:
                                                          'images/mind.png',
                                                      book_name:
                                                          'self help books')));
                                        },
                                        child: Cards(
                                            about_img: 'self help books',
                                            img_address: 'images/mind.png')),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Bookdetail(
                                                    book_img:
                                                        'images/pluto.jpg',
                                                    book_name:
                                                        'scientific books')));
                                      },
                                      child: Cards(
                                          about_img: 'sientific books',
                                          img_address: 'images/pluto.jpg'),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0)),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Bookdetail(
                                                      book_img:
                                                          'images/ramyon.png',
                                                      book_name:
                                                          'food recipies')));
                                        },
                                        child: Cards(
                                            about_img: 'food recipies',
                                            img_address: 'images/ramyon.png')),
                                  ],
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                margin: EdgeInsets.symmetric(vertical: 50),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: 150,
                                child: Text(
                                  'Start reading',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 29, 122, 198),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(239, 109, 108, 108)
                                                .withOpacity(0.5),
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      )
                                    ]),
                              ),
                              hoverColor: const Color.fromARGB(0, 0, 0, 0),
                            )
                          ]),
                    ),
                  ])),
        )
      ],
    ));
  }
}
