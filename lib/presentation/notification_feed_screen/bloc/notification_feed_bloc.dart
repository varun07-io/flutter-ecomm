import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/feeds_item_model.dart';
import 'package:the_dots_e_commerce/presentation/notification_feed_screen/models/notification_feed_model.dart';
part 'notification_feed_event.dart';
part 'notification_feed_state.dart';

/// A bloc that manages the state of a NotificationFeed according to the event that is dispatched to it.
class NotificationFeedBloc
    extends Bloc<NotificationFeedEvent, NotificationFeedState> {
  NotificationFeedBloc(NotificationFeedState initialState)
      : super(initialState) {
    on<NotificationFeedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationFeedInitialEvent event,
    Emitter<NotificationFeedState> emit,
  ) async {
    emit(state.copyWith(
        notificationFeedModelObj: state.notificationFeedModelObj
            ?.copyWith(feedsItemList: fillFeedsItemList())));
  }

  List<FeedsItemModel> fillFeedsItemList() {
    return List.generate(3, (index) => FeedsItemModel());
  }
}
