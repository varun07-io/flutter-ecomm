/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.manshirt,
    this.id,
  }) {
    manshirt = manshirt ?? "Man Shirt";
    id = id ?? "";
  }

  String? manshirt;

  String? id;
}
