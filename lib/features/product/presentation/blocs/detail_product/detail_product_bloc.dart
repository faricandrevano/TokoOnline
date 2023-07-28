import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/product/product.dart';
import 'package:shamo_mobile/features/settings/settings.dart';

part 'detail_product_event.dart';
part 'detail_product_state.dart';

class DetailProductBloc extends Bloc<DetailProductEvent, DetailProductState> {
  DetailProductBloc({required this.getProductUseCase})
      : super(DetailProductState.initial()) {
    on<GetDetailProductEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: DetailProductStateStatus.loading));
        final usecase = await getProductUseCase(event.id);
        usecase.fold(
          (l) {
            emit(state.copyWith(
              status: DetailProductStateStatus.failure,
              failure: l,
            ));
          },
          (r) {
            emit(state.copyWith(
              status: DetailProductStateStatus.success,
              product: r,
            ));
          },
        );
      } catch (exception, stackTrace) {
        exception.recordError(
          RecordErrorParams(exception: exception, stackTrace: stackTrace),
        );
      }
    });

    on<ChangeIndexDetailProductEvent>((event, emit) async {
      emit(state.copyWith(index: event.index));
    });
  }

  final GetProductUseCase getProductUseCase;
}
