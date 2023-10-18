import 'package:flutter/material.dart';

class IchirakuTitle extends StatelessWidget{
  final String ichirakuImagePath;
  final String ichirakuName;
  final String ichirakuPrice;
  const IchirakuTitle({
    required this.ichirakuImagePath,
    required this.ichirakuName,
    required this.ichirakuPrice,
    super.key
  });

  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
        color: Colors.black,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image Ichiraku
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 200,
                height: 150,
                child: FittedBox(
                    fit:BoxFit.fill, child:Image.asset(ichirakuImagePath) ,)
                    ),),
                    Padding(
                      padding: 
                        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ichirakuName,
                              style:const TextStyle(fontSize: 20),

                            ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Я просто хочу... Рамен',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              

                            
                          ],
                        ),
                        ),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('$ichirakuPrice 両'),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color:  Colors.orange,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(Icons.add)
                              ),
                            ],
                          ),
                          
                          
                          )
],
                    
                    )
        ),
        );
      
  }
}