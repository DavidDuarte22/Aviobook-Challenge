//
//  GildedRoseAgedBrieItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseAgedBrieItemsTests: XCTestCase {

  // MARK: Aged Brie items
  func testAgedBrie_daysPositive_increaseQuality() {
    let items = [
      AgedBrieItem(name: "Aged Brie", sellIn: 2, quality: 0),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.enumerated().forEach { (index, item) in
      XCTAssertEqual(item.quality, 1)
    }
  }
  
  
  // MARK: Aged Brie items
  func testAgedBrie_daysNegative_increaseQuality() {
    let items = [
      AgedBrieItem(name: "Aged Brie", sellIn: -2, quality: 0),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.enumerated().forEach { (index, item) in
      XCTAssertEqual(item.quality, 2)
    }
  }
  
  func testAgedBrie_infiniteDays_MaxQuality() {
    let items = [
      AgedBrieItem(name: "Aged Brie", sellIn: 2, quality: 0),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    
    for _ in 0...100 {
      app.updateQuality()
    }
    
    // Then quality
    items.enumerated().forEach { (index, item) in
      XCTAssertEqual(item.quality, 50)
    }
  }
}
