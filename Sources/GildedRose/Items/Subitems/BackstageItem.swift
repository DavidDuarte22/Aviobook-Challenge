//
//  BackstageItem.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

import Foundation

public class BackstageItem: Item { }

extension BackstageItem: UpdatableItem {
  func updateQuality() {
    switch sellIn {
    case ...0:
      return quality = 0
    case 1...5:
      return quality = min(maxQuality, quality + 3)
    case 6...10:
      return quality = min(maxQuality, quality + 2)
    default:
      return quality = min(maxQuality, quality + 1)
    }
  }
}
