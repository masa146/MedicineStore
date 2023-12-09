import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/models/products_model.dart';
import 'package:shop/widget/product_card.dart';
import 'package:shop/widget/product_details.dart';

class MedicinesGrid extends StatelessWidget {
  MedicinesGrid({super.key});

  final List<ProductModel> products = [
    ProductModel(
        trade_name: "Allergy Relief",
        price: 20,
        image: "assets/Allergy Relief1.png",
        quantity: 5,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 200,
        image: "assets/Dettol1.png",
        quantity: 3,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol1.png",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Allergy Relief",
        price: 20,
        image: "assets/Allergy Relief.jpg",
        quantity: 5,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 3,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    ProductModel(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "This is your products....Do you want to add something? 🤔 ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 6.sp,
            ),
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: products.length,
          itemBuilder: (ctx, i) {
            return ProductCard(
                productModel: products[i],
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetails(
                                productDetail: products[i],
                              )));
                });
          },
        ));
  }
}
