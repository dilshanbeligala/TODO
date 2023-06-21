import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/views/widgets/to_do_component.dart';

class ToDoData {

  String title;
  String time;
  
  bool isSelected;
  bool isRead;

  ToDoData({
    
    required this.title,
   
    required this.time,
    this.isSelected = false,
    this.isRead = false,
  });
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ToDoWidget()
        ],
      )
    );
  }
}
