public class GildedRose {
  var items: [Item]

  public init(items: [Item]) {
      self.items = items
  }

  public func updateQuality() {
    for item in items {
      guard let updatableItem = item as? UpdatableItem else { return }
      updatableItem.updateQuality()
      item.sellIn -= 1
    }
  }
}
