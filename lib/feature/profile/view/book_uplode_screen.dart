import 'package:flutter/material.dart';
import 'package:libararybd/common/botton.dart';
import 'package:libararybd/common/custom_textfild.dart';
import 'package:libararybd/core/util/custom_color.dart';
import 'package:libararybd/core/util/dimensions.dart';

class BookUplodeScreenView extends StatefulWidget {
  const BookUplodeScreenView({super.key});

  @override
  State<BookUplodeScreenView> createState() => _BookUplodeScreenViewState();
}

class _BookUplodeScreenViewState extends State<BookUplodeScreenView> {
  String? _selectedCategory;
  final List<String> _categories = const ["Math", "Physics", "Sports"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Publish your Book "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: Dimensions.fifty,
              ),
              const Text(
                "Book Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextField(
                hinText: "Book Name",
              ),
              const Text(
                "Author Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextField(
                hinText: "Writer Name",
              ),
              const Text(
                "Category",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              DropdownButtonFormField<String>(
                initialValue: _selectedCategory,
                decoration: InputDecoration(
                  hintText: "Select Book Category",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                ),
                items: _categories
                    .map(
                      (category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              // CustomTextField(  hinText: "Book Name", ),
              const Text(
                "Book cover Photos",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[300]),
                height: Dimensions.twoHundredTow,
                child: const Icon(Icons.photo_camera),
              ),

              const SizedBox(
                height: Dimensions.twoHundred,
              ),
              CustomBottom(
                name: "Publish",
                bottomColor: appColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
