import 'package:flutter/material.dart';
import 'package:libararybd/core/util/custom_color.dart';
import 'package:libararybd/core/util/dimensions.dart';

class YourBooksScreen extends StatelessWidget {
  const YourBooksScreen({super.key});

  Widget _bookCover(String url) {
    return Image.network(
      url,
      height: 80,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return const Center(child: SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        ));
      },
      errorBuilder: (_, __, ___) {
        return Container(
          color: Colors.grey.shade300,
          alignment: Alignment.center,
          child: const Icon(Icons.broken_image, color: Colors.black54),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,

        centerTitle: true,backgroundColor: appColor,
        title: const Text("Your Books",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: ListView.builder(itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: Container(
              height: Dimensions.hundred,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(Dimensions.defaultSize),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 75,
                    color: Colors.amberAccent,
                    child: _bookCover(
                      "https://namyapress.com/wp-content/uploads/2023/03/415-C-Programming-PB-scaled.jpg",
                    ),
                  ),

                  const SizedBox(width: Dimensions.fifTeen,),
                  Expanded(child: Text("যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণযুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ  ")),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(alignment: Alignment.topLeft,child: Icon(Icons.cancel,color: Colors.red,)),
                  )
                ],),
            ),
          );
        })
      ),
    );
  }
}
