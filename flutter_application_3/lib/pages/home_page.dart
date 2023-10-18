import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/util/Ichiraku_title.dart';
import 'package:flutter_application_3/util/Ichiraku_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State<HomePage> createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage> {
  final List ichirakuType = [
    ['Рамен', true],
    ['Данго', false],
    ['Гъёза', false],
    ['Онигири', false],
    ['Зелёный чай', false],
  ];
  void IchirakuTypeSelected(int index) {
    setState(() {
      for (int i=0; i < ichirakuType.length;  i++) {
        ichirakuType[i][1]=false;
      }
        ichirakuType[index][1]=true;
    }
    );
    
  }
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person, color: Colors.orange),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.orange,), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ]),
      
      body: Column (children:<Widget> [
         Padding(padding: 
        const EdgeInsets.symmetric(horizontal: 25.0),
        child:  Text ('Лучший рамен на обед! \nИ завтрак... И ужин...',
        style: GoogleFonts.comfortaa(fontSize: 26,),
        ),
        ),
        const SizedBox( height: 25,
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          decoration: InputDecoration(prefixIcon: const Icon(Icons.search, color: Colors.orange,),
          hintText: 'Поиск...',
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600),
          ),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600),
          ),
          ),
        ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ichirakuType.length,
            itemBuilder: (context, index){
              return IchirakuType(ichirakuType: ichirakuType[index][0],
               isSelected: ichirakuType[index][1], onTap: (){
                IchirakuTypeSelected(index);
               },
               );
            },
          )
        ),
        
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 400,
          child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            IchirakuTitle(
              ichirakuImagePath: 'assets/images/Ramen.jpeg',
              ichirakuName: 'Рамен',
              ichirakuPrice: '2000',
            ),
        
            IchirakuTitle(
              ichirakuImagePath: 'assets/images/Gyoza.jpg',
              ichirakuName: 'Гьёза',
              ichirakuPrice: '1700',
            ),
        
            IchirakuTitle(
              ichirakuImagePath: 'assets/images/Onigiri.jpg',
              ichirakuName: 'Онигири',
              ichirakuPrice: '500',
            ),
        
            IchirakuTitle(
              ichirakuImagePath: 'assets/images/Dango.jpg',
              ichirakuName: 'Данго',
              ichirakuPrice: '1550',
            ),
        
            IchirakuTitle(
              ichirakuImagePath: 'assets/images/Tea.jpg',
              ichirakuName: 'Чай',
              ichirakuPrice: '700',
            ),
        
          ],
          ),
        )
      ],
      )
    );
  }
}