import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_dots_e_commerce/presentation/search_result_one_screen/models/search_result_one_model.dart';
part 'search_result_one_event.dart';
part 'search_result_one_state.dart';

/// A bloc that manages the state of a SearchResultOne according to the event that is dispatched to it.
class SearchResultOneBloc
    extends Bloc<SearchResultOneEvent, SearchResultOneState> {
  SearchResultOneBloc(SearchResultOneState initialState) : super(initialState) {
    on<SearchResultOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultOneInitialEvent event,
    Emitter<SearchResultOneState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
