import 'package:equatable/equatable.dart';
import 'package:shamo_mobile/features/product/product.dart';
import 'package:shamo_mobile/features/transaction/domain/domain.dart';

class TransactionModel extends Equatable {
  final String id;
  final String code;
  final String address;
  final String total;
  final String status;
  final ProductModel product;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TransactionModel({
    required this.id,
    required this.code,
    required this.address,
    required this.total,
    required this.status,
    required this.product,
    required this.createdAt,
    required this.updatedAt,
  });

  Transaction toEntity() {
    return Transaction(
      id: id,
      code: code,
      address: address,
      total: total,
      status: status,
      product: product.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        id: json['id'],
        code: json['code'],
        address: json['address'],
        total: json['total'],
        status: json['status'],
        product: ProductModel.fromJson(json['product']),
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
      );

  @override
  List<Object> get props => [
        id,
        code,
        address,
        total,
        status,
        product,
        createdAt,
        updatedAt,
      ];
}
