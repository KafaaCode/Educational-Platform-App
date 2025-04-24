import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

part 'upload_profile_state.dart';
part 'upload_profile_cubit.freezed.dart';

class UploadProfileCubit extends Cubit<UploadProfileState> {
  final ImagePicker _picker = ImagePicker();
  
  UploadProfileCubit() : super(const UploadProfileState.initial());
// طلب صلاحية الكاميرا
  void requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (!status.isDenied) {
      try {
        emit(state.copyWith(loading: true));
        final XFile? image =
            await _picker.pickImage(source: ImageSource.camera);
        emit(state.copyWith(
            isDone: true, loading: false, image: File(image?.path ?? '')));
      } catch (e) {
        emit(state.copyWith(
            isDone: false,
            loading: false,
            error: true,
            errorMessage: e.toString()));
      }
    }
  }

// طلب صلاحية التخزين
  void requestStoragePermission() async {
    final status = await Permission.storage.request();
    if (!status.isDenied) {
      print('-----------gallery isDenied--------------');
      try {
        emit(state.copyWith(loading: true));
        final XFile? image =
            await _picker.pickImage(source: ImageSource.gallery);
        emit(state.copyWith(
            isDone: true, loading: false, image: File(image?.path ?? '')));
      } catch (e) {
        emit(state.copyWith(
            isDone: false,
            loading: false,
            error: true,
            errorMessage: e.toString()));
      }
    }
  }
}
// ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('فشل في اختيار الصورة: ${e.toString()}')),
          // );