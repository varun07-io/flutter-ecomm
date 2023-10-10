// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'feeds_item_model.dart';

/// This class defines the variables used in the [notification_feed_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationFeedModel extends Equatable {
  NotificationFeedModel({this.feedsItemList = const []}) {}

  List<FeedsItemModel> feedsItemList;

  NotificationFeedModel copyWith({List<FeedsItemModel>? feedsItemList}) {
    return NotificationFeedModel(
      feedsItemList: feedsItemList ?? this.feedsItemList,
    );
  }

  @override
  List<Object?> get props => [feedsItemList];
}
