//
//  File.swift
//  
//
//  Created by David Duarte on 13/10/2022.
//

import Foundation

protocol UpdatableItem: Item {
  func updateQuality()
  var maxQuality: Int { get }
  var minQuality: Int { get }
}

extension UpdatableItem {
  var maxQuality: Int {
    get { return 50 }
  }
  
  var minQuality: Int {
    get { return 0 }
  }
}
