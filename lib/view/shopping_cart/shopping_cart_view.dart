import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:xgrid/view/shopping_cart/cart_tile.dart';
import 'package:xgrid/view_model/shopping_cart_view_model.dart';
import 'package:xgrid/widgets/content.dart';

class ShoppingCartView extends StatefulWidget {
  final ShoppingCartViewModel viewModel;

  const ShoppingCartView({super.key, required this.viewModel});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Content(
          data: "Shopping Cart",
          size: 22,
          weight: FontWeight.bold,
        ),
        actions: [
          Icon(
            Icons.upload,
            color: Colors.purple,
          )
        ],
      ),
      body: GetBuilder<ShoppingCartViewModel>(builder: (value) {
        return Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: 2,
              separatorBuilder: (context, index) {
                return Divider(height: 2,color: Colors.black.withOpacity(0.2),);
              },
              itemBuilder: (context, index) {
                return CartTile(
                  name: "ddd",
                );
              },
            )
          ],
        );
      }),
    );
  }
}
