//
//  GildedRoseTests.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

@testable import GildedRose
import XCTest

class GildedRoseTests: XCTestCase {
  func testItemDescription() {
    let items = [
      Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
    ]
    
    XCTAssertEqual(items[0].description, "+5 Dexterity Vest, 10, 20")
  }
}
