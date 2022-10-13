//
//  ConjuredItem.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

import Foundation

public final class ConjuredItem: Item { }

extension ConjuredItem: UpdatableItem {
  func updateQuality() {
    let tmpQuality = sellIn < 0 ? (quality - 4) : (quality - 2)
    quality = max(tmpQuality, minQuality)
  }
}
