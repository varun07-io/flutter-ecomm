/// This class is used in the [flashsale_item_widget] screen.
class FlashsaleItemModel {
  FlashsaleItemModel({
    this.fsnikeairmax,
    this.id,
  }) {
    fsnikeairmax = fsnikeairmax ?? "FS - Nike Air Max 270 React...";
    id = id ?? "";
  }

  String? fsnikeairmax;

  String? id;
}
