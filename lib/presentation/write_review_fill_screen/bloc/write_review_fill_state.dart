// ignore_for_file: must_be_immutable

part of 'write_review_fill_bloc.dart';

/// Represents the state of WriteReviewFill in the application.
class WriteReviewFillState extends Equatable {
  WriteReviewFillState({
    this.addreviewoneController,
    this.writeReviewFillModelObj,
  });

  TextEditingController? addreviewoneController;

  WriteReviewFillModel? writeReviewFillModelObj;

  @override
  List<Object?> get props => [
        addreviewoneController,
        writeReviewFillModelObj,
      ];
  WriteReviewFillState copyWith({
    TextEditingController? addreviewoneController,
    WriteReviewFillModel? writeReviewFillModelObj,
  }) {
    return WriteReviewFillState(
      addreviewoneController:
          addreviewoneController ?? this.addreviewoneController,
      writeReviewFillModelObj:
          writeReviewFillModelObj ?? this.writeReviewFillModelObj,
    );
  }
}
