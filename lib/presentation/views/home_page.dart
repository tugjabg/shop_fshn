import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shop_fshn/presentation/modal/product.dart';
import 'package:shop_fshn/presentation/route/routes.dart';

import 'package:shop_fshn/presentation/views/product_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  final ProductController _productController = Get.put(ProductController());
  Widget _buildListView(int index){
    return InkWell(
      child: Card(
          elevation: 10,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 100,
                  width: 100,
                  child: Image.network(
                      _productController.products[index].image
                  ),
                ),
                Container(
                  width: 150,
                  child: Text(
                    _productController.products[index].title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),
                  ),
                ),
                Center(
                  child: Text(
                      "\$ ${_productController.products[index].price}",
                  ),
                )
              ],
            ),
          )
      ),
      onTap: (){
        Get.toNamed(Routes.details, arguments: _productController.products[index]);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoping"),
      ),
      body: Obx((){
          if(_productController.isLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return Container(
              margin: EdgeInsets.all(13),
              child: GridView.builder(
                  itemCount: _productController.products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index){
                    return _buildListView(index);
                  }
              ),
            );
          }
        }
      )
    );
  }
}