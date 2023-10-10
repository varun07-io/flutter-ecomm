import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/explore_item_model.dart';
import 'package:the_dots_e_commerce/presentation/explore_page/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

/// A bloc that manages the state of a Explore according to the event that is dispatched to it.
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  List<ExploreItemModel> fillExploreItemList() {
    return List.generate(6, (index) => ExploreItemModel());
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj
            ?.copyWith(exploreItemList: fillExploreItemList())));
  }
}
