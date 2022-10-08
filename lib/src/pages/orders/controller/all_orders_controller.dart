import 'package:get/get.dart';
import 'package:geekshop/src/models/order_model.dart';
import 'package:geekshop/src/pages/auth/controller/auth_controller.dart';
import 'package:geekshop/src/pages/orders/orders_result/orders_result.dart';
import 'package:geekshop/src/pages/orders/repository/orders_repository.dart';
import 'package:geekshop/src/services/utils_services.dart';

class AllOrdersController extends GetxController {
  List<OrderModel> allOrders = [];
  final ordersRepository = OrdersRepository();
  final authController = Get.find<AuthController>();
  final utilsServices = UtilsServices();

  @override
  void onInit() {
    super.onInit();

    getAllOrders();
  }

  Future<void> getAllOrders() async {
    allOrders = allOrders
      ..sort((a, b) => b.createdDateTime!.compareTo(a.createdDateTime!));

    update();
  }

  setOrder(OrderModel order) {
    allOrders.add(order);
  }
}
