import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/models/products_model.dart';

class ProductCard extends StatefulWidget {
  ProductCard({super.key, required this.productModel, required this.onTap});
  final ProductModel productModel;
  final VoidCallback onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  void incrementquantity() {
    setState(() {
      widget.productModel.quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.deepPurple, width: 3)),
        margin: EdgeInsets.all(20),
        height: 270.h,
        width: 90.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
              child: Container(
                height: 150.h,
                width: 50.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.productModel.image))),
              ),
            ),
            Text(
              widget.productModel.trade_name,
              style: TextStyle(color: Colors.indigo[800], fontSize: 5.sp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${widget.productModel.quantity} pieces',
                  style: TextStyle(fontSize: 5.sp),
                ),
                Text(
                  '${widget.productModel.price} 💲',
                  style: TextStyle(fontSize: 5.sp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Click to increase quantity",
                    style: TextStyle(fontSize: 5.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 10.sp,
                    child: FloatingActionButton(
                      onPressed: incrementquantity,
                      child: Icon(
                        Icons.add,
                        size: 5.sp,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
