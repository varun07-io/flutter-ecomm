/// This class is used in the [feeds_item_widget] screen.
class FeedsItemModel {
  FeedsItemModel({
    this.newproduct,
    this.id,
  }) {
    newproduct = newproduct ?? "New Product";
    id = id ?? "";
  }

  String? newproduct;

  String? id;
}
