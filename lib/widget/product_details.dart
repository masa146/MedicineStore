import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/models/products_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productDetail});
  final ProductModel productDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "More details about the product :",
          style: TextStyle(fontSize: 6.sp),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 30.w, top: 20.h, bottom: 20.h, right: 20.w),
            child: Container(
              height: 400.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(productDetail.image))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Text(
                      " . Scientific Name :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      productDetail.ScientificName!,
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Trade Name :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      productDetail.trade_name,
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Category :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      productDetail.category!,
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Company :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      productDetail.company!,
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Quantity :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      " ${productDetail.quantity} pieces",
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Price :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "${productDetail.price} SP",
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " . Expiration Date :",
                      style: TextStyle(
                          color: Colors.deepPurple[900], fontSize: 9.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      productDetail.expirationDate!,
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
