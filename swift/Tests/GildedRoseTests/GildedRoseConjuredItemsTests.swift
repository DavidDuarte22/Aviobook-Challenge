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
      Item(name: "Conjured Mana Cake", sellIn: 3, quality: 6),
    ]
    
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 5)
    }
  }
  
  func testConjured_daysNegative_decreaseDoubleQuality() {
    let items = [
      Item(name: "Conjured Mana Cake", sellIn: -3, quality: 6),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, -6)
    }
  }
  

}
