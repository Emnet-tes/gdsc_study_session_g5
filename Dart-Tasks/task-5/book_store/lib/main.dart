
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('ET book store'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            children: [
              Row(children: [
                Expanded(
                    child: SearchBar(
                        hintText: 'Looking for...',
                        padding: MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 10.0)),
                        trailing: <Widget>[
                      Tooltip(
                        message: 'Search ',
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      )
                    ])),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.blue,
                      )),
                )
              ]),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                width: 300,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 161, 167, 201),
                        Color.fromARGB(255, 41, 61, 177),
                        Color.fromARGB(255, 161, 167, 202)
                      ],
                    )),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 52.0)),
                            Icon(Icons.pause, color: Colors.white),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'To day reader tomorrow '),
                                TextSpan(
                                    text: 'Leader',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50.0)),
                              ],
                            )),
                            Padding(padding: EdgeInsets.only(bottom: 20.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.translate,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                ),
                                Icon(Icons.share, color: Colors.white)
                              ],
                            )
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: '12/sep/2023'),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 30.0)),
                            Icon(Icons.pause, color: Colors.white)
                          ],
                        ))
                  ],
                ),
              ),
              Text(
                'Categories',
                style: TextStyle(fontSize: 20),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.health_and_safety_outlined),
                            Text('Health')
                          ],
                        ))),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.science_outlined),
                            Text('Science')
                          ],
                        ))),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.history_edu_outlined),
                            Text('History')
                          ],
                        ))),
                  ),
                  Container(
                    width: 110,
                    margin: EdgeInsets.only(top:10.0,right:10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                              
                          children: [
                            Icon(Icons.military_tech_outlined),
                            Text('Tehnology')
                            
                          ],
                        ))),
                  ),
                  Container(
                    width: 110,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.psychology_alt_outlined),
                            Text('philosopy')
                          ],
                        ))),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Recomendation',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward_outlined)
              ]),
              Container(
                height: 200,
                
                child: ListView(
                    scrollDirection: Axis.horizontal,
                  
                    children: <Widget>[
                      Column(children: [Image.asset('images/ramyon.png',width: 100, ),
                      Text('food recipies'),],),Padding(padding: 
                      EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(children: [Image.asset('images/sun.jpg',width: 100,),
                      Text('popular books'),],),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(children: [Image.asset('images/mind.png',width: 100,),
                      Text('self help books'),],),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(children: [Image.asset('images/pluto.jpg',width: 100,),
                      Text('sientific books'),],),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(children: [Image.asset('images/ramyon.png',width: 100,),
                      Text('recipie')],)
                      
                      
                      
                    ],
                  )

              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'New',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward_outlined)
              ]),
              Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: [
                          Image.asset(
                            'images/pasta.jpg',
                            width: 100,
                          ),
                          Text('recipie books')
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                       Column(
                        children: [
                          Image.asset(
                            'images/pluto.jpg',
                            width: 100,
                          ),
                          Text('sientific books'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),Column(
                        children: [
                          Image.asset(
                            'images/sun.jpg',
                            width: 100,
                          ),
                          Text('popular books'),
                        ],
                      ),
                      
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      
                      Column(
                        children: [
                          Image.asset(
                            'images/mind.png',
                            width: 100,
                          ),
                          Text('self help books'),
                        ],
                      ),Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(
                        children: [
                          Image.asset(
                            'images/ramyon.png',
                            width: 100,
                          ),
                          Text('food recipies'),
                        ],
                      ),
                     
                     
                      
                    ],
                  )),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Trending',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward_outlined)
              ]),
              Container(
                  height: 500,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: [
                          Image.asset(
                            'images/ramyon.png',
                            width: 100,
                          ),
                          Text('food recipies'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(
                        children: [
                          Image.asset(
                            'images/sun.jpg',
                            width: 100,
                          ),
                          Text('popular books'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(
                        children: [
                          Image.asset(
                            'images/mind.png',
                            width: 100,
                          ),
                          Text('self help books'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(
                        children: [
                          Image.asset(
                            'images/pluto.jpg',
                            width: 100,
                          ),
                          Text('sientific books'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Column(
                        children: [
                          Image.asset(
                            'images/ramyon.png',
                            width: 100,
                          ),
                          Text('pasta')
                        ],
                      )
                    ],
                  ))
                            

            ]
            ),
            bottomNavigationBar:Row(children: [Expanded(child: Icon(Icons.widgets_outlined),),
            Expanded(
            child: Icon(Icons.library_books_outlined),
          ),
        Expanded(child: Icon(Icons.home_outlined),),
        Expanded(
            child: Icon(Icons.book_online_outlined)),
            Expanded(
              child: Icon(Icons.library_add_check),
            )
          ]) ,
            );
  }
}
