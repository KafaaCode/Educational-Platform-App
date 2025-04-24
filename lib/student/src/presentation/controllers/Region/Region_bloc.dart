import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Region_state.dart';
part 'Region_event.dart';
part 'Region_bloc.freezed.dart';

class RegionBloc extends Bloc<RegionEvent, RegionState> {
  final BaseAuthRepository baseAuthRepository;

  RegionBloc(this.baseAuthRepository) : super(const RegionState.initial()) {
    on<_GetRegions>(_onGetRegionsEvent);
  }

  Future<void> _onGetRegionsEvent(event, emit) async {
    final response = await baseAuthRepository.getRegions();
    {
      response.fold(
        (l) => emit(state.copyWith(
          loading: false,
          error: true,
          errorMessage: l.message,
        )),
        (r) => emit(state.copyWith(
          loading: false,
          error: false,
          regions: r,
        )),
      );
    }
  }
}
