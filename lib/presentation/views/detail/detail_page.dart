import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_fshn/presentation/modal/product.dart';

class DetailPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Product productDetail = Get.arguments;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Card(
            elevation: 10,
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*0.8,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          productDetail.image,
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.3,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                // width: 300,
                                child: Text(
                                  "${productDetail.category}",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  "Title: ${productDetail.title}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                child: Text(
                                  "${productDetail.description}",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "\$${productDetail.price}",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                child: Text("Add to cart"),
                                onPressed:(){
                                  print("Them san pham");
                                }
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}