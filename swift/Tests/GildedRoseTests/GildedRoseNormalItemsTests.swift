//
//  GildedRoseNormalItemsTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseNormalItemsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

  // MARK: Normal items
  func testNormalItem_daysPositive_decreaseQuality() {
    let items = [
      Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
//      Item(name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 19)
    }
  }
  
  func testNormalItem_daysNegative_decreaseDoubleQuality() {
    let items = [
      Item(name: "+5 Dexterity Vest", sellIn: -10, quality: 20),
//      Item(name: "Elixir of the Mongoose", sellIn: -5, quality: 7),
    ]
    // When day passes
    let app = GildedRose(items: items)
    app.updateQuality()
    
    // Then quality
    items.forEach { item in
      XCTAssertEqual(item.quality, 18)
    }
  }

}
