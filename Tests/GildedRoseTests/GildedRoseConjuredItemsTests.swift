//
//  GildedRoseConjuredItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseConjuredItemsTests: XCTestCase {

  // MARK: Conjured items
  func testConjuredItem_daysPositive_decreaseQuality() {
    let items = [
      ConjuredItem(name: "Conjured Mana Cake", sellIn: 3, quality: 6),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 4)
    }
  }
  
  func testConjured_daysNegative_decreaseDoubleQuality() {
    let items = [
      ConjuredItem(name: "Conjured Mana Cake", sellIn: -3, quality: 6),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 2)
    }
  }
  
  func testConjured_infiniteDays_MinQuality() {
    let items = [
      ConjuredItem(name: "Conjured Mana Cake", sellIn: 3, quality: 6),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    
    for _ in 0...100 {
      app.updateQuality()
    }
    
    // Then quality
    items.enumerated().forEach { (index, item) in
      XCTAssertEqual(item.quality, 0)
    }
  }
}
