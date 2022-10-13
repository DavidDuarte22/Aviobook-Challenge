//
//  NormalItem.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

import Foundation

public final class NormalItem: Item { }

extension NormalItem: UpdatableItem {
  func updateQuality() {
    let tmpQuality = sellIn < 0 ? (quality - 2) : (quality - 1)
    quality = max(tmpQuality, minQuality)
  }
}
