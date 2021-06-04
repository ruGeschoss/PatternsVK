//
//  AFServiceProxy.swift
//  homeWork_1
//
//  Created by Alexander Andrianov on 04.06.2021.
//  Copyright © 2021 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AFServiceProxy: AFServiceAdapterInterface {
  private let afService: AFServiceAdapter
  
  init(afService: AFServiceAdapter) {
    self.afService = afService
  }
  
  func loadFriends(completion: @escaping ([AdapterFriend]) -> Void) {
    afService.loadFriends(completion: completion)
    print(#function, Date())
  }
  
}
