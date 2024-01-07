import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String img_address;
  final String about_img;

  Cards({super.key, required this.about_img, required this.img_address});

  @override
  Widget build(BuildContext) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
               Image.asset(
            img_address,
            width: 100,
          ),
          IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(2))
                  ),
                  child: Column(
                    children: [Icon(Icons.star,size: 12,color: Colors.white,),
                    Text('4.5' ,style:TextStyle(color: Colors.white,fontSize: 13))],
                  )
                  
                ),
                hoverColor: const Color.fromARGB(0, 0, 0, 0),
              )
            ],
          )
         ,
          Text(about_img),
        ],
        
      ),
      
    );
  }
}
