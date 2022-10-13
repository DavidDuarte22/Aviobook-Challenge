//
//  GildedRoseNormalItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseNormalItemsTests: XCTestCase {

  // MARK: Normal items
  func testNormalItem1_daysPositive_decreaseQuality() {
    let items = [
      NormalItem(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 19)
    }
  }
  
  func testNormalItem2_daysPositive_decreaseQuality() {
    let items = [
      NormalItem(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 6)
    }
  }
  
  func testNormalItem1_daysNegative_decreaseDoubleQuality() {
    let items = [
      NormalItem(name: "+5 Dexterity Vest", sellIn: -10, quality: 20),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 18)
    }
  }
  
  func testNormalItem2_daysNegative_decreaseDoubleQuality() {
    let items = [
      NormalItem(name: "Elixir of the Mongoose", sellIn: -5, quality: 7),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 5)
    }
  }

  func testNormalItem_infiniteDays_MinQuality() {
    let items = [
      NormalItem(name: "Conjured Mana Cake", sellIn: 3, quality: 6),
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
