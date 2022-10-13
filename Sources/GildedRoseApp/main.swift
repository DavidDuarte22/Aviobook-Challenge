import GildedRose

let items = [
    NormalItem(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
    AgedBrieItem(name: "Aged Brie", sellIn: 2, quality: 0),
    NormalItem(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
    SulfurasItem(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
    SulfurasItem(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
    BackstageItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
    BackstageItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
    BackstageItem(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
    ConjuredItem(name: "Conjured Mana Cake", sellIn: 3, quality: 6),
]

let app = GildedRose(items: items)

var days = 2
if CommandLine.argc > 1 {
    days = Int(CommandLine.arguments[1])! + 1
}

for i in 0 ..< days {
    print("-------- day \(i) --------")
    print("name, sellIn, quality")
    for item in items {
        print(item)
    }
    print("")
    app.updateQuality()
}
