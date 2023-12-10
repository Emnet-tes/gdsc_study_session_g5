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
      home: Thirdscreen(),
    );
  }
}

class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Image(
        image: AssetImage(
          'images/istockphoto-1271149787-612x612.jpg',
        ),
      ),
      Padding(padding: EdgeInsets.symmetric(vertical: 140.0)),
      Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 71, 125, 206),
            borderRadius: BorderRadius.circular(7)),
        child: TextButton(
          onPressed: () {},
          child: Text('Get Started',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
      )
    ]));
  }
}

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("To do list"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: Center(
            child: Column(children: [
          Container(
            child: Image(
              image: AssetImage('images/istockphoto-1271149787-612x612.jpg'),
            ),
            height: 200,
            width: 250,
          ),
          Text('Tasks list'),
          Container(
            height: 350,
            width: 250,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'U',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Ui/Ux App design',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.red,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'U',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Ui/Ux App design',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.green,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'V',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('view conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'F',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Foot ball dribling',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.red,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 182, 42, 0),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Create task',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                  )
                ]),
          )
        ])));
  }
}

class Thirdscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ],
          title: Text(
            'Create New Task',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),

        body: Center(child :Container (
          height: 550,
          width:250,
          child: Column(
            children:[
            Container(
              child:Text('Main task name' ,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.deepOrange),
            ),
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(vertical: 10),
             ),
            Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(69, 0, 0, 0),
                            blurRadius: 2,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Text('Ui/Ux App design',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black))
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      'Due Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange,),
                    ),
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.symmetric(vertical: 10)
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(69, 0, 0, 0),
                            blurRadius: 2,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Expanded(
                          flex: 2,
                          child:Text('24/12/2004',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(220, 0, 0, 0))) ),
                                Expanded(child:IconButton(
                            onPressed: () {}, icon: Icon(Icons.calendar_month_sharp,color: Colors.deepOrange,)) )
                         ],
                      
                    ),
                  ),
                              Container(
              child:Text('Description' ,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.deepOrange),
            ),
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(vertical: 10),
             ),
            Container(
                    height: 90,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(69, 0, 0, 0),
                            blurRadius: 2,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Expanded(child:Text("First i have to animate the logo and later prototyping my design.it's very important",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black)) )
                        
                      ],
                    ),
                  )
             ,
             Container(
              child: Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Add task',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                          
                    ),
                  ) 
          ],
          )
        )
        ] ),      
                )
                ));
  }
}
