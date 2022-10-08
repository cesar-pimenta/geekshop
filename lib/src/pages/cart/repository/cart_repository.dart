import 'package:geekshop/src/constants/endpoints.dart';
import 'package:geekshop/src/models/cart_item_model.dart';
import 'package:geekshop/src/models/order_model.dart';
import 'package:geekshop/src/pages/cart/cart_result/cart_result.dart';
import 'package:geekshop/src/services/http_manager.dart';

class CartRepository {
  final _httpManager = HttpManager();

  Future<CartResult<List<CartItemModel>>> getCartItems({
    required String token,
    required String userId,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getCartItems,
      method: HttpMethods.post,
      headers: {
        'X-Parse-Session-Token': token,
      },
      body: {
        'user': userId,
      },
    );

    if (result['result'] != null) {
      List<CartItemModel> data =
          List<Map<String, dynamic>>.from(result['result'])
              .map(CartItemModel.fromJson)
              .toList();

      return CartResult<List<CartItemModel>>.success(data);
    } else {
      return CartResult.error(
          'Ocorreu um erro ao recuperar os itens do carrinho');
    }
  }

  Future<CartResult<OrderModel>> checkoutCart(
      {required String token,
      required double total,
      required List<CartItemModel> items}) async {
    OrderModel order = OrderModel(
        id: "1",
        overdueDateTime: DateTime.now().add(const Duration(hours: 1)),
        createdDateTime: DateTime.now(),
        items: items,
        status: "pending_payment",
        qrCodeImage:
            "data:image/png;base64,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",
        copyAndPaste: "https://google.com",
        total: total);

    return CartResult<OrderModel>.success(order);
  }

  Future<bool> changeItemQuantity({
    required String token,
    required String cartItemId,
    required int quantity,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.changeItemQuantity,
      method: HttpMethods.post,
      body: {
        'cartItemId': cartItemId,
        'quantity': quantity,
      },
      headers: {
        'X-Parse-Session-Token': token,
      },
    );

    return result.isEmpty;
  }

  Future<CartResult<String>> addItemToCart({
    required String userId,
    required String token,
    required String productId,
    required int quantity,
  }) async {
    final result = await _httpManager.restRequest(
        url: Endpoints.addItemToCart,
        method: HttpMethods.post,
        body: {
          'user': userId,
          'quantity': quantity,
          'productId': productId,
        },
        headers: {
          'X-Parse-Session-Token': token,
        });

    if (result['result'] != null) {
      return CartResult<String>.success(result['result']['id']);
    } else {
      return CartResult.error('Não foi possível adicionar o item no carrinho');
    }
  }
}
