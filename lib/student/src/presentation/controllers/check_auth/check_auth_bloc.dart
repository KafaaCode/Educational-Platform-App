import 'package:bloc/bloc.dart';
import 'package:educational_platform_app/student/src/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_auth_event.dart';
part 'check_auth_state.dart';
part 'check_auth_bloc.freezed.dart';

class CheckAuthBloc extends Bloc<CheckAuthEvent, CheckAuthState> {
  CheckAuthBloc() : super(_Initial()) {
    on<CheckAuthEvent>((event, emit) {
      event.map(
          updateInfo: (updateInfo) {
            print("update event");
            emit(state.copyWith(user: updateInfo.user));
          },
          sendData: (_SendDataEvent value) {
            print(value.user.name);
          },
          started: (_Started value) {});
      //;
    });
  }
}
