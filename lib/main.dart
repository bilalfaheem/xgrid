import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_it/get_it.dart';
import 'package:xgrid/view/shopping_cart/shopping_cart_view.dart';
import 'package:xgrid/view_model/shopping_cart_view_model.dart';

final getIt = GetIt.instance;
late ShoppingCartViewModel shopViewModel;
Future<void> main() async {
  shopViewModel = Get.put(ShoppingCartViewModel());
  // getIt.registerSingleton<ShoppingCartViewModel>(ShoppingCartViewModel());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ShoppingCartView(
          viewModel: shopViewModel,
        ));
  }
}
