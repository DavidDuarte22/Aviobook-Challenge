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
  func testSulfuras1_daysPositiveAndNegative_equalQuality() {
    let items = [
      SulfurasItem(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 80)
    }
  }
  
  func testSulfuras2_daysPositiveAndNegative_equalQuality() {
    let items = [
      SulfurasItem(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 80)
    }
  }

  func testSulfuras_infiniteDays_SameQuality() {
    let items = [
      SulfurasItem(name: "Sulfuras, Hand of Ragnaros", sellIn: 10, quality: 80),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    
    for _ in 0...100 {
      app.updateQuality()
    }
    
    // Then quality
    items.enumerated().forEach { (index, item) in
      XCTAssertEqual(item.quality, 80)
    }
  }
}
