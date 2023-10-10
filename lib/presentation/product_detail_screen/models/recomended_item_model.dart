/// This class is used in the [recomended_item_widget] screen.
class RecomendedItemModel {
  RecomendedItemModel({
    this.fsnikeairmax,
    this.id,
  }) {
    fsnikeairmax = fsnikeairmax ?? "FS - Nike Air Max 270 React...";
    id = id ?? "";
  }

  String? fsnikeairmax;

  String? id;
}
