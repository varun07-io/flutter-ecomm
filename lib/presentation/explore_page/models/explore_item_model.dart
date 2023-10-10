/// This class is used in the [explore_item_widget] screen.
class ExploreItemModel {
  ExploreItemModel({
    this.manshirt,
    this.id,
  }) {
    manshirt = manshirt ?? "Man Shirt";
    id = id ?? "";
  }

  String? manshirt;

  String? id;
}
