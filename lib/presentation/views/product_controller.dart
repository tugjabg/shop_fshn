import 'package:get/get.dart';
import 'package:shop_fshn/presentation/modal/product.dart';
import 'package:shop_fshn/presentation/service/ApiService.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var products = List<Product>().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    try{
      isLoading(true);
      var listProducts = await APIService.fetchProducts();
      if(listProducts != null){
        products.assignAll(listProducts);
      }
    }finally{
      isLoading(false);
    }
  }

}