import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_discount_state.dart';
part 'offers_discount_event.dart';
part 'offers_discount_bloc.freezed.dart';

class OffersDiscountBloc
    extends Bloc<OffersDiscountEvent, OffersDiscountState> {
  final BaseMainRepository mainRepository;

  OffersDiscountBloc(this.mainRepository) : super(const OffersDiscountState()) {
    on<OffersDiscountEvent>((event, emit) async {
      emit(state.copyWith(loading: true));
      final response = await mainRepository.getOffersDiscounts();
      response.fold(
        (l) => emit(state.copyWith(
            loading: false,
            error: true,
            errorMessage: l.message,
            courses: state.courses)),
        (r) => emit(state.copyWith(loading: false, courses: r)),
      );
    });
  }
}
