//
//  GildedRoseBackstageItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseBackstageItemsTests: XCTestCase {
  
  // MARK: Backstage items
  func testBackstageItem_moreThan10daysPositive_increaseQuality() {
    let items = [
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 21)
    }
  }
  
  func testBackstageItem_between5and10daysPositive_increaseDoubleQuality() {
    let items = [
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
    ]
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 50)
    }
  }
  
  func testBackstageItem_between0and5daysPositive_increaseThirdQuality() {
    let items = [
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
    ]
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 50)
    }
  }
  
  func testBackstageItem_daysNegative_0Quality() {
    let items = [
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 0, quality: 49),
    ]
    
    // When day passes
    let app = GildedRose(items: items)

    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 0)
    }
  }
}
