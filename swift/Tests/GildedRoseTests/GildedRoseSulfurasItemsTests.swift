//
//  GildedRoseSulfurasItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseSulfurasItemsTests: XCTestCase {

  // MARK: Sulfuras items
  func testSulfuras_daysPositiveAndNegative_equalQuality() {
    let items = [
      Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
      Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, item.quality)
    }
  }

}
