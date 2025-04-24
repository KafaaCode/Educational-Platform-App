part of 'offers_discount_bloc.dart';

@freezed
class OffersDiscountState with _$OffersDiscountState {
  const factory OffersDiscountState({
     @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isAuth,
    @Default(false) bool isEnpty,
    @Default([]) List<Course> courses,
  }) = _OffersDiscountState;
 
}