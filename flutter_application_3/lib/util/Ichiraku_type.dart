import 'package:flutter/material.dart';
class IchirakuType extends StatelessWidget{
  final String ichirakuType;
  final bool isSelected;
  final VoidCallback onTap;
  const IchirakuType({
    required this.ichirakuType,
    required this.isSelected,
    required this.onTap,
    super.key});
  

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(ichirakuType,
        style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color: isSelected? Color.fromARGB(221, 241, 100, 18):Color.fromARGB(255, 255, 255, 255)), 
        ),
        ),
    );
  }
}