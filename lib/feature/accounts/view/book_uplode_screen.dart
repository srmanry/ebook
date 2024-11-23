import 'package:flutter/material.dart';
import 'package:libararybd/common/botton.dart';
import 'package:libararybd/common/custom_textfild.dart';
import 'package:libararybd/util/custom_color.dart';
import 'package:libararybd/util/dimensions.dart';

class BookUplodeScreenView extends StatelessWidget {
  const BookUplodeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Publish your Book "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(
          children: [
            SizedBox(height: Dimensions.fifty,),
            const CustomTextField(  hinText: "Book Name", ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: const CustomTextField(  hinText: "Writer Name", ),
            ),
           // CustomTextField(  hinText: "Book Name", ),
            Text("Book cover Photos"),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300]
              ),
              height: Dimensions.twoHundredTow,
            child: Icon(Icons.photo_camera),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: const CustomTextField(  hinText: "Book Type", suffixIcon: Icon(Icons.arrow_drop_down_outlined),),
            ),


            SizedBox(height: Dimensions.twoHundred,),
            CustomBottom(name: "Publish",bottomColor: appColor,)
          ],
        ),
      ),
    );
  }
}
