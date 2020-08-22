import 'package:faysal_vai_project/constants.dart';
import 'package:faysal_vai_project/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/addToCart.dart';
import 'components/colorAndSize.dart';
import 'components/counter_with_favBtn.dart';
import 'components/description.dart';
import 'components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2,),
                      Description(product: product),
                                            SizedBox(height: kDefaultPaddin / 2,),

                      CounterWithFavBtn(),
                                            SizedBox(height: kDefaultPaddin / 2,),

                      AddtoCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

