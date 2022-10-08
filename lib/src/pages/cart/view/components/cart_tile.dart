import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geekshop/src/config/custom_colors.dart';
import 'package:geekshop/src/models/cart_item_model.dart';
import 'package:geekshop/src/pages/cart/controller/cart_controller.dart';
import 'package:geekshop/src/pages/common_widgets/quantity_widget.dart';
import 'package:geekshop/src/services/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;

  const CartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();
  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // Imagem
        leading: Image.network(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        // Titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(
            color: Color.fromARGB(255, 238, 192, 52),
            fontWeight: FontWeight.w500,
          ),
        ),

        // Total
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Quantidade
        trailing: QuantityWidget(
          suffixText: widget.cartItem.item.unit,
          value: widget.cartItem.quantity,
          result: (quantity) {
            controller.changeItemQuantity(
              item: widget.cartItem,
              quantity: quantity,
            );
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
