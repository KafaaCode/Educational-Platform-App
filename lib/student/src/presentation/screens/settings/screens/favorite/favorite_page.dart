import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/favorite/favorite_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          path: 'assets/images/bg_intro_page1.png',
          isCustom: true,
          child: Container(),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_things.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocProvider(
            create: (context) =>
                FavoriteBloc(sl())..add(const FavoriteEvent.getFavorites()),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal:
                      MediaQuery.of(context).size.width * 0.02, // 5% من العرض
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'جميع المفضلات',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    BlocBuilder<FavoriteBloc, FavoriteState>(
                        builder: (context, state) {
                      if (state.isDone &&
                          !state.loading &&
                          !state.isEnpty &&
                          !state.error) {
                        return Center(
                          child: Wrap(
                              spacing: 2,
                              runSpacing: 5,
                              children:
                                  List.generate(state.courses.length, (i) {
                                return SizedBox(
                                    width: MediaQuery.of(context).size.width >
                                            971
                                        ? MediaQuery.of(context).size.width *
                                            0.31
                                        : MediaQuery.of(context).size.width >
                                                800
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.47
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    621
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.47
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.99,
                                    child: CourseCard(
                                      course: state.courses[i],
                                      path:
                                          'assets/images/backgroundAppbar.png',
                                    ));
                              })),
                        );
                      } else {
                        if (state.loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state.error) {
                          return Center(
                              child: Text(" error: ${state.errorMessage}"));
                        }
                        return const Center(child: Text("not found courses"));
                      }
                    }),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
