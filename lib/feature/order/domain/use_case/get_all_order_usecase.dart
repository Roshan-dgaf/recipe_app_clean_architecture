import 'package:dartz/dartz.dart';
import 'package:recipe_app/app/usecase/usease.dart';
import 'package:recipe_app/core/error/failure.dart';
import 'package:recipe_app/feature/order/domain/entity/order_entity.dart';
import 'package:recipe_app/feature/order/domain/repository/order_repository.dart';

class GetAllOrderUsecase implements UsecaseWithoutParams<List<OrderEntity>> {
  final IOrderRepository _orderRepository;

  GetAllOrderUsecase({required IOrderRepository orderRepository})
      : _orderRepository = orderRepository;

  @override
  Future<Either<Failure, List<OrderEntity>>> call() {
    return _orderRepository.getOrder();
  }
}
