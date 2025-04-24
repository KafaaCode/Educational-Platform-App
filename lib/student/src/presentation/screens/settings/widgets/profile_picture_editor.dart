import 'dart:io';

import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/upload_profile/upload_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePictureEditor extends StatelessWidget {
  final double size;
  final Color borderColor;
  final String? initialImageUrl;
  final bool isEditable;

  const ProfilePictureEditor({
    super.key,
    this.size = 120,
    this.isEditable = true,
    this.borderColor = const Color.fromRGBO(88, 135, 96, 1),
    this.initialImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider(
        create: (context) => UploadProfileCubit(),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: borderColor,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: BlocBuilder<UploadProfileCubit, UploadProfileState>(
                  buildWhen: (previous, current) =>
                      previous.loading != current.loading ||
                      previous.error != current.error ||
                      previous.image != current.image,
                  builder: (context, state) {
                    if (state.loading) {
                      return const CircularProgressIndicator();
                    } else if (state.error) {
                      return const Icon(Icons.error);
                    }
                    return CircleAvatar(
                      radius: size / 2,
                      backgroundImage:
                          _getBackgroundImage(context, state.image),
                      backgroundColor: Colors.grey[200],
                      child: _showDefaultIcon(state.image)
                          ? Icon(Icons.person, size: size * 0.6)
                          : null,
                    );
                  }),
            ),
            isEditable
                ? Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      shape: const CircleBorder(),
                      color: const Color.fromRGBO(
                          88, 135, 96, 1), //rgba(88, 135, 96, 1)
                      child:
                          BlocBuilder<UploadProfileCubit, UploadProfileState>(
                        buildWhen: (previous, current) =>
                            previous.image != current.image,
                        builder: (context, state) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (ctx) => SafeArea(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                            leading:
                                                const Icon(Icons.camera_alt),
                                            title: const Text('التقاط صورة'),
                                            onTap: () {
                                              context
                                                  .read<UploadProfileCubit>()
                                                  .requestCameraPermission();
                                              Navigator.pop(ctx);
                                            },
                                          ),
                                          ListTile(
                                            leading:
                                                const Icon(Icons.photo_library),
                                            title:
                                                const Text('اختيار من المعرض'),
                                            onTap: () {
                                              context
                                                  .read<UploadProfileCubit>()
                                                  .requestStoragePermission();
                                              Navigator.pop(ctx);
                                            },
                                          ),
                                        ],
                                      ),
                                    )),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  ImageProvider? _getBackgroundImage(BuildContext context, File? image) {
    print('_______imaaaaaage__________');
    print(initialImageUrl);
    print('_______imaaaaaage__________');

    if (image != null) {
      context
          .read<CheckAuthBloc>()
          .add(CheckAuthEvent.updateProfile(path: image.path));
      return FileImage(image);
    } else if (initialImageUrl != null) {
      return NetworkImage(initialImageUrl!);
    }
    return null;
  }

  bool _showDefaultIcon(image) {
    print('_______imaaaaaage__________');
    print(initialImageUrl);
    print('_______imaaaaaage__________');
    return image == null && initialImageUrl == null;
  }
}
