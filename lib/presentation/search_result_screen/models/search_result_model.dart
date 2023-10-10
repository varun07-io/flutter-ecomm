// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'search_result_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel extends Equatable {
  SearchResultModel({this.searchResultItemList = const []}) {}

  List<SearchResultItemModel> searchResultItemList;

  SearchResultModel copyWith(
      {List<SearchResultItemModel>? searchResultItemList}) {
    return SearchResultModel(
      searchResultItemList: searchResultItemList ?? this.searchResultItemList,
    );
  }

  @override
  List<Object?> get props => [searchResultItemList];
}
