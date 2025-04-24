import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/domain/repository/evaluation_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// ---------------------------------------------------
// ---------------------------------------------------
// ------------ Evaluations Widget--------------------
// ---------------------------------------------------
// ---------------------------------------------------
class EvaluationsButton extends StatefulWidget {
  final IconData icon;
  final IconData iconSelected;
  final int courseId;
  final int? initRate;
  const EvaluationsButton(
      {super.key,
      this.icon = Icons.star_border,
      this.iconSelected = Icons.star,
      this.initRate,
      required this.courseId});

  @override
  State<EvaluationsButton> createState() => _EvaluationsButtonState();
}

class _EvaluationsButtonState extends State<EvaluationsButton> {
  EvaluationCubit cubit = sl<EvaluationCubit>();
  @override
  void initState() {
    cubit.setRating(widget.initRate);
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EvaluationCubit, EvaluationState>(
      bloc: cubit,
      builder: (context, state) {
        return IconButton(
          icon: Icon(
            state.evaluation?.rate == null ? widget.icon : widget.iconSelected,
            color: const Color(0xFFDFB547),
            size: 30,
          ),
          onPressed: () {
            _showEvaluation(context, state.evaluation?.rate);
          },
        );
      },
    );
  }

  void _showEvaluation(BuildContext context, int? rate) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int selectedRating = rate ?? 0;
        ThemeData theme = Theme.of(context);
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: const Text(
                'إرسال تقييم',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'حدد عدد النجوم لتقييم الدورة:',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => IconButton(
                        onPressed: () {
                          setState(() {
                            selectedRating = index + 1;
                          });
                        },
                        icon: Icon(
                          index < selectedRating
                              ? Icons.star
                              : Icons.star_border,
                          color: const Color(0xFFDFB547),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'إلغاء',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BlocBuilder<EvaluationCubit, EvaluationState>(
                  bloc: cubit,
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (selectedRating == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('يرجى اختيار تقييم'),
                            ),
                          );
                          return;
                        }
                        cubit.submitEvaluation(
                          EvaluationModel(
                            courseId: widget.courseId,
                            rate: selectedRating,
                            comment: 'تقييم الدورة',
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        'إرسال',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

// ---------------------------------------------------
// ---------------------------------------------------
// ------------ Evaluations Cubit---------------------
// ---------------------------------------------------
// ---------------------------------------------------
class EvaluationCubit extends HydratedCubit<EvaluationState> {
  final BaseEvaluationRepository evaluationRepository;
  EvaluationCubit(this.evaluationRepository)
      : super(const EvaluationInitial(null));

  void setRating(int? evaluation) {
    emit(EvaluationInitial(state.evaluation?.copyWith(rate: evaluation)));
  }

  void submitEvaluation(EvaluationModel evaluation) async {
    final response = await evaluationRepository.setEvaluation(
      evaluation: evaluation,
    );
    response.fold(
      (failure) {
        emit(EvaluationFailure(failure.message));
      },
      (evaluation) {
        emit(EvaluationSuccess(evaluation));
      },
    );
  }

  @override
  EvaluationState? fromJson(Map<String, dynamic> json) {
    return state;
  }

  @override
  Map<String, dynamic>? toJson(EvaluationState state) {
    return {
      'evaluation': state.evaluation?.toJson(),
    };
  }
}

// ---------------------------------------------------
// ---------------------------------------------------
// ------------ Evaluations State---------------------
// ---------------------------------------------------
// ---------------------------------------------------
sealed class EvaluationState extends Equatable {
  final EvaluationModel? evaluation;
  const EvaluationState(this.evaluation);
  @override
  List<Object?> get props => [evaluation];
}

class EvaluationInitial extends EvaluationState {
  const EvaluationInitial(super.evaluation);
}

class EvaluationLoading extends EvaluationState {
  const EvaluationLoading(super.evaluation);
}

class EvaluationSuccess extends EvaluationState {
  const EvaluationSuccess(super.evaluation);
}

class EvaluationFailure extends EvaluationState {
  final String error;
  const EvaluationFailure(this.error) : super(null);
}

// ---------------------------------------------------
// ---------------------------------------------------
// ------------ Evaluations Model---------------------
// ---------------------------------------------------
// ---------------------------------------------------

class EvaluationModel {
  final int? id;
  final int? rate;
  final int? courseId;
  final String? comment;

  EvaluationModel({this.id, this.courseId, this.rate, this.comment});

  EvaluationModel copyWith({
    int? id,
    int? courseId,
    int? rate,
    String? comment,
  }) {
    return EvaluationModel(
      id: id ?? this.id,
      courseId: courseId ?? this.courseId,
      rate: rate ?? this.rate,
      comment: comment ?? this.comment,
    );
  }
  factory EvaluationModel.fromJson(Map<String, dynamic> json) {
    return EvaluationModel(
      id: json['id'],
      courseId: json['course_id'],
      rate: json['rate'],
      comment: json['comment'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'rate': rate,
      'course_id': courseId,
      // 'comment': comment,
    };
  }
}
