import 'package:flutter/material.dart';
import 'package:libararybd/feature/home/home_screen.dart';
import 'package:libararybd/util/custom_color.dart';

class DashBoardScreenView extends StatefulWidget {
  const DashBoardScreenView({super.key});

  @override
  State<DashBoardScreenView> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreenView> {

  int currentPage = 0;
  List pageList = [
    HomeScreenView(),
    HomeScreenView(),
    HomeScreenView(),
    HomeScreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: bodyColor,
      appBar: AppBar(
        title:Text("E Book",style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xfff00A28D),
      )  ,

      body: pageList[currentPage],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: appColor,
            )
          ]
        ),
        child: BottomNavigationBar(
          selectedItemColor: appColor,
            unselectedItemColor: appColor,
            //showUnselectedLabels: true,

            currentIndex: currentPage,
            onTap: (index){
              setState(() {
              currentPage =index;
              });
            },
            items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.note_add),label: "Note"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined),label: "Account"),
        ]),
      ),
    );
  }
}
